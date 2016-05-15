$(function(){
    $('.code').each(function(i, block) {
        hljs.configure({useBR: true});
        hljs.highlightBlock(block);
    });
})