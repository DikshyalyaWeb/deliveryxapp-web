{{-- Extends layout --}}
@extends('admin.layout.default')

{{-- Content --}}
@section('content')

<div class="container-fluid">
    <a href="{{ route('themes.admin.add_theme') }}" class="btn btn-primary mb-3">{{ __('common.add_theme') }}</a>
	<div class="row page-titles mx-0 mb-3">
        <div class="col-sm-6 p-0">
            <div class="welcome-text">
                <h4>{{ __('common.themes') }}</h4>
                <span>{{ __('common.all_themes') }}</span>
            </div>
        </div>
        <div class="col-sm-6 p-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">{{ __('common.themes') }}</a></li>
                <li class="breadcrumb-item active"><a href="{{ route('themes.admin.add_theme') }}">{{ __('common.add_theme') }}</a></li>
            </ol>
        </div>
    </div>

	<div class="row mb-4">
		@forelse($themes as $key => $theme)
			<div class="col-md-3">
				<div class="card">
                    <div class="card-body p-1">
                        <div class="new-arrival-product">
                            <img class="img-fluid" src="{{ route('get_file', ['vendor' => $theme->getVendor(), 'theme' => $theme->getName(), 'file' => 'screenshot.png']) }}" alt="{{ ucfirst($theme->getName()).__('common.preview_image ') }}">
                        </div>
                    </div>
                    <div class="card-footer p-3 border-top d-flex align-items-center justify-content-between flex-column gap-3">
                    	<h5 class="m-0 text-capitalize">{{ $theme->getName() }}</h5>
                        <div class="d-flex justify-content-between gap-2 w-100">
                            <a href="javascript:void(0);" class="btn btn-xs btn-primary light w-100 ImportDemo @if (!$theme->enabled()) disabled @endif" rel="{{ route('get_file', ['vendor' => $theme->getVendor(), 'theme' => $theme->getName(), 'file' => Str::lower($theme->getName()).'.xml']) }}">{{ __('common.import') }}</a>
                        	@if ($theme->enabled())
                        		<a href="javascript:void(0);" class="btn btn-xs btn-info w-100">{{ __('common.activated') }}</a>
                        	@else
                        		<a href="{{ route('themes.admin.index') }}?activate={{ $key }}" class="btn btn-xs btn-primary light w-100">{{ __('common.active') }}</a>
                                <a href="{{ route('themes.admin.delete', ['theme' => $theme->getName()]) }}" class="btn btn-xs btn-danger light w-100">{{ __('common.delete') }}</a>
                        	@endif
                        </div>
                	</div>
                </div>
			</div>
		@empty
		<div class="col-12">
			<div class="alert alert-primary text-center" role="alert">
			  	{{ __('common.themes_not_found') }}
			</div>
		</div>
		@endforelse
		
	</div>

</div>

@endsection