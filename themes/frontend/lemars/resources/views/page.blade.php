@extends('layout.default')

@php
    $requiredFieldIndicator = config('Discussion.name_email_require') ? DzHelper::requiredFieldIndicator() : '';
    $isRequired = config('Discussion.name_email_require') ? 'required' : '';
    $comment_author = !empty($_COOKIE['comment_author_'.config('constants.comment_cookie_hash')]) ? $_COOKIE['comment_author_'.config('constants.comment_cookie_hash')] : '';
    $comment_email = !empty($_COOKIE['comment_email_'.config('constants.comment_cookie_hash')]) ? $_COOKIE['comment_email_'.config('constants.comment_cookie_hash')] : '';
    $comment_url = !empty($_COOKIE['comment_website_'.config('constants.comment_cookie_hash')]) ? $_COOKIE['comment_website_'.config('constants.comment_cookie_hash')] : '';
@endphp

@section('content')
<!-- Content -->
    
    <!-- Page Detail -->
    @if ($page)
        @if ($page->visibility == 'PP' && $status == 'locked')
        <div class="container">
            <form method="POST" action="" class="dz-form style-1 my-5 ">
                @csrf
                <p>{{ __('This content is password protected. To view it please enter your password below:') }}</p>

                <div class=" row">
                    <div class="col-md-8 d-flex">
                        <div class="input-area col-sm-8">
                            <label for="password" class="form-control-label">{{ __('Password') }}</label>
                            <div class=" input-line">
                                <input id="password" type="password" class="form-control" required name="password">
                            </div>
                            @error('password')
                                <p class="text-danger">
                                    {{ $message }}
                                </p>
                            @enderror
                        </div>

                        <div class="col-sm-4 text-end">
                            <button type="submit" class="btn btn-primary btn-skew">
                                <span>{{ __('Login') }}</span>
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        @endif
        @if ($status == 'unlock_'.$page->id)
        
            {!! HelpDesk::shortcodeContent($page->content) !!}

            <!-- Child Pages Detail End -->
            @if (optional($page->child_pages)->isNotEmpty())
            <div class="container">
                <h4>{{ __('Related Pages') }}</h4>
                <ul class="related-pages p-l m-b30">
                    @forelse($page->child_pages as $child_page)
                    <li>
                        -<a href="{!! DzHelper::laraPageLink($child_page->id) !!}" class="pl-2 ">{{ $child_page->title }}</a>
                        @if ($child_page->child_pages->isNotEmpty())
                            {!! DzHelper::getChildPage($child_page->child_pages) !!}
                        @endif
                    </li>
                    @empty
                    @endforelse
                </ul>
            </div>
            @endif
            <!-- Child Pages Detail End -->
        @endif
        <div class="container clear mt-5" id="comment-list">
            <div class="comments-area" id="comments-div">
                @if($comments->isNotEmpty())
                <ol class="comment-list">
                    @forelse($comments as $comment)
                        <li class="comment">
                            <div class="comment-body">
                                <div class="comment-author vcard">
                                    @if (optional($comment->user)->profile && Storage::exists('public/user-images/'.$comment->user->profile))
                                        <img class="avatar photo" src="{{ asset('storage/user-images/'.$comment->user->profile) }}" alt=""> 
                                    @else
                                        <img class="avatar photo" src="{{ asset('images/no-user.png') }}" alt=""> 
                                    @endif
                                    <cite class="fn">{{ $comment->commenter }}</cite>
                                    <div class="comment-meta d-block p-0">
                                        <span>{{ $comment->created_at }}</span>
                                    </div>
                                    <div class="reply">
                                        <a rel="nofollow" href="{{ DzHelper::laraPageLink($page->id) }}?replytocom={{ $comment->id }}#respond" class="comment-reply-link w3-comment-reply" data-commentid="{{ $comment->id }}" data-postid="{{ $page->id }}" data-replyto="Reply to {{ $comment->commenter }}"> 
                                           {{ __('REPLY') }}
                                        </a> 
                                    </div>
                                </div>
                                <div class="comment-info">
                                    <p>{{ $comment->comment }}</p>
                                </div>
                            </div>
                            @if (isset($comment->child_comments) && $comment->child_comments->isNotEmpty())
                                @include('elements.child_comments', ['comments' => $comment->child_comments, 'depth' => 1])
                            @endif
                        </li>
                    @empty
                    @endforelse
                </ol>
                @endif
                <div class="mb-4">
                    @if(config('Discussion.page_comments'))
                        {!! $comments->links('elements.pagination') !!}
                    @endif
                </div>
                @if(!config('Discussion.registration_comment'))
                    <div id="ReplyFormContainer">
                        @if(Session::has('unapprove_comment_error'))
                            <div class="alert alert-danger alert-dismissible alert-alt fade show">
                                <strong>{{ __('common.error') }}</strong> {{ Session::get('unapprove_comment_error') }}
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="btn-close">
                            </div>
                        @endif
                        <div class="default-form comment-respond style-1 mb-4" id="respond">
                            <div class="comment-reply-title text-center mb-3">
                                <span>{{ __('LEAVE A REPLY') }}</span>
                            </div>
                            <h5>
                                <span id="reply-title"></span>
                                <small class="fw-normal"> <a rel="nofollow" class="d-none" id="cancel-comment-reply" href="{{ DzHelper::laraPageLink($page->id) }}#respond">{{ __('Cancel reply') }}</a> </small>
                            </h5>
                            @auth
                                <p class="m-t0">{{ __('You are Logged in as') }} <a href="{{ route('admin.users.profile') }}">{{ Auth::user()->name }}</a></p>
                            @endauth
                            <form action="{{ route('comments.admin.store') }}" class="comment-form" id="commentform" method="post">
                                @csrf
                                @if($errors->any())
                                    <div class="m-b30">
                                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                            {!! implode('<br>', $errors->all(':message')) !!}
                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                        </div>
                                    </div>
                                @endif
                                @if( Session::get('success'))
                                    <div class="m-b30">
                                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                                            {{ Session::get('success') }}
                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                        </div>
                                    </div>
                                @endif
                                <input type="hidden" name="object_id" value="{{ $page->id }}">
                                <input type="hidden" name="parent_id" id="comment_parent" value="0">
                                @guest
                                    <p class="m-b30">
                                        <input type="text" name="commenter" placeholder="{{ __('Name') }}" id="commenter" {{ old('commenter', $comment_author) }} class="form-control" {{ $isRequired }}>
                                    </p>
                                    <p class=" m-b30">
                                        <input type="text" placeholder="{{ __('Email') }}" name="email" id="email" value="{{ old('email', $comment_email) }}" class="form-control" {{ $isRequired }}>
                                    </p>
                                    <p class="m-b30">
                                        <input type="text" placeholder="{{ __('Website url') }}" name="profile_url" id="profileurl" {{ old('profile_url', $comment_url) }} class="form-control">
                                    </p>
                                @endguest
                                <p class="comment-form-comment m-b30">
                                    <textarea rows="8" name="comment" placeholder="{{ __('Type Comment here ...') }}" id="comment" class="form-control">{{ old('comment') }}</textarea>
                                </p>
                                @guest
                                    @if(config('Discussion.save_comments_cookie'))
                                        <p class="comment-form-comment">
                                            <input type="checkbox" name="set_comment_cookie" class="form-check-input" id="set_comment_cookie" @checked($comment_author || $comment_email || $comment_url)>
                                            <label for="set_comment_cookie" class="d-block">{{ __('Remember details for future comments: Name, Email, and Website.') }}</label>
                                        </p>
                                    @endif
                                @endguest
                                <p class="form-submit m-b30">
                                    <button href="#respond" type="submit" class="btn btn-dark btn-skew btn-icon" id="submit"><span>{{ __('Submit Now') }}</span></button>
                                </p>
                            </form>
                        </div>
                    </div>
                @else
                    <p>{{ __('Please') }} <a href="{{ route('admin.login') }}">{{ __('log in') }}</a> {{ __('to post a comment.') }}</p>
                @endif
                <!-- Form END -->
            </div>
        </div>
    @else
        <div class="col-12">{{ __('No record found.') }}</div>
    @endif
    <!-- Page Detail End -->
        
<!-- Content end -->
@endsection