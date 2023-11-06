@if(config('Discussion.thread_comments') && $depth < config('Discussion.thread_comments_depth'))
    <ol class="children">
        @php
            $depth++;
        @endphp
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
                            @if($depth < config('Discussion.thread_comments_depth'))
                                <a rel="nofollow" href="{{ DzHelper::laraBlogLink($blog->id) }}?replytocom={{ $comment->id }}#respond" class="comment-reply-link w3-comment-reply" data-commentid="{{ $comment->id }}" data-postid="{{ $blog->id }}"  data-replyto="Reply to {{ $comment->commenter }}"> 
                                   {{ __('REPLY') }}
                                </a>
                            @endif
                        </div>
                    </div>
                    <div class="comment-info">
                        <p>{{ $comment->comment }}</p>
                    </div>
                </div>
                @if (isset($comment->child_comments) && $comment->child_comments->isNotEmpty())
                    @include('elements.child_comments', ['comments' => $comment->child_comments, 'depth' => $depth])
                @endif
            </li>
    	@empty
    	@endforelse
    </ol>
@else
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
                </div>
                <div class="comment-info">
                    <p>{{ $comment->comment }}</p>
                </div>
            </div>
        </li>
        @if (isset($comment->child_comments) && $comment->child_comments->isNotEmpty())
            @include('elements.child_comments', ['comments' => $comment->child_comments, 'depth' => $depth])
        @endif
    @empty
    @endforelse
@endif