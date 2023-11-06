<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LanguageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        if($request->isMethod('post'))
        {
            $language = $request->input('language_hidden');
            $file = $request->input('file_name_hidden');
            $langauge_file = $request->input('language');
            $languageStr = '';
            if(!empty($langauge_file))
            {
                foreach ($langauge_file as $key => $value) {
                    if(is_array($value))
                    {
                        $languageStr .= "'" . $key . "'" . " => "."[\n\t";

                        foreach ($value as $subKey => $subValue) {
                            $subValue = \Str::replace("'", "\'", $subValue);
                            $languageStr .= "\t'" . $subKey . "'" . " => "."'" . $subValue."',\n\t";
                        }

                        $languageStr .= "],\n\t";
                    }
                    else
                    {
                        $value = \Str::replace("'", "\'", $value);
    					$languageStr .= "'" . $key . "'" . " => "."'" . $value."',\n\t";
                    }
                }
            }

            $contents = "<?php \n\nreturn [ \n\n\t".$languageStr."\n];";

            $filePath = base_path('lang') . '/' . $language . '/' . $file . '.php';
            return file_put_contents($filePath, $contents);

        }
        $page_title = __('common.languages');
        $languages = $this->getLanguages();
        return view('admin.languages.index', compact('page_title', 'languages'));
    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request)
    {
        $translations   = Null;
        if($request->isMethod('post'))
        {
            $language       = $request->input('language');
            $file_name           = $request->input('file_name');
            $translations   = $this->getTranslations($language, $file_name);
        }
        return view('admin.languages.show', compact('translations'));

    }

    private function getLanguages()
    {
        $langBasePath = base_path('lang');
        $files = scandir($langBasePath);

        $languages = [];

        foreach ($files as $file) {
            if ($file !== '.' && $file !== '..') {
                $language = pathinfo($file, PATHINFO_FILENAME);
                $languages[$language] = $this->getLanguageFiles($language);
            }
        }
        return $languages;
    }

    private function getTranslations($language, $file)
    {
        $filePath = base_path('lang') . '/' . $language . '/' . $file . '.php';
        if (file_exists($filePath)) {
            return require $filePath;
        }

        return [];
    }

    private function getLanguageFiles($language)
    {
        $langBasePath = base_path('lang').'/'.$language;
        $files = scandir($langBasePath);

        $langFiles = [];

        foreach ($files as $file) {
            if ($file !== '.' && $file !== '..') {
                $langFiles[] = pathinfo($file, PATHINFO_FILENAME);
            }
        }

        return $langFiles;
    }

}
