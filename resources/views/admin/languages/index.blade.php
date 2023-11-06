{{-- Extends layout --}}
@extends('admin.layout.default')

{{-- Content --}}
@section('content')

<div class="container-fluid">

	<div class="row page-titles mx-0 mb-3">
        <div class="col-sm-6 p-0">
            <div class="welcome-text">
                <h4>{{ __('common.languages') }}</h4>
                <span>{{ __('common.update_languages') }}</span>
            </div>
        </div>
        <div class="col-sm-6 p-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('admin.languages.index') }}">{{ __('common.languages') }}</a></li>
                <li class="breadcrumb-item active"><a href="javascript:void(0)">{{ __('common.update_languages') }}</a></li>
            </ol>
        </div>
    </div>

    <div class="row">
    	<div class="col-md-4">
    		<div class="row">
    			<div class="col-md-12">
					<form action="{{ route('admin.languages.show') }}" method="POST" id="LanguageForm">
			        	@csrf
			    		<div class="card">
							<div class="card-header">
								<h4 class="card-title">{{ __('common.load_language') }}</h4>
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-md-12 form-group">
										<label class="form-label">{{ __('common.language') }}</label>
										<select name="language" id="language" class="form-control">
											<option disabled selected>{{ __('Choose one') }}</option>
											@forelse($languages as $key => $language)
												<option value="{{ $key }}" files="{{ json_encode($language) }}">{{ $key }}</option>
											@empty
											@endforelse
										</select>
										@error('language')
				                            <p class="text-danger">
				                                {{ $message }}
				                            </p>
				                        @enderror
									</div>
									<div class="col-md-12 form-group">
										<label class="form-label">{{ __('common.files') }}</label>
										<select name="file_name" id="file_name" class="form-control">
											<option value="">{{ __('Choose one') }}</option>
										</select>
										@error('file_name')
				                            <p class="text-danger">
				                                {{ $message }}
				                            </p>
				                        @enderror
									</div>
								</div>
							</div>
							<div class="card-footer border">
								<button type="submit" class="btn btn-primary">{{ __('common.load') }}</button>
							</div>
						</div>
					</form>
				</div>
			</div>
    	</div>
    	<div class="col-md-8">
    		<div class="row">
    			<div class="col-md-12" >
					<form action="{{ route('admin.languages.index') }}" method="POST" id="UpdateLanguageFile">
						@csrf
			    		<div class="card">
							<div class="card-header">
								<h4 class="card-title">{{ __('common.update_languages') }}</h4>
							</div>
							<div class="card-body">
								<div class="row language-table-scroll">
									<div class="col-md-12">
										<input type="hidden" name="language_hidden" id="language_hidden">
										<input type="hidden" name="file_name_hidden" id="file_name_hidden">
										<table class="table table-responsive table-bordered">
											<thead>
												<tr>
													<th>{{ __('common.key') }}</th>
													<th>{{ __('common.value') }}</th>
												</tr>
											</thead>
											<tbody id="LanguageData">
												<tr>
													<td colspan="2" align="center">{{ __('common.no_language_found') }}</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="card-footer border">
								<button type="submit" class="btn btn-primary">{{ __('common.save') }}</button>
							</div>	
						</div>
					</form>
				</div>
			</div>
    	</div>
    </div>

</div>

@endsection