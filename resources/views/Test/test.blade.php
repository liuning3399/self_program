<html>
    <head>

    </head>
    <body>
        <div id="divTyping"></div>
        <script>
            var str='让我们退至胎儿期记忆<br>胎儿期记忆倒退完毕<br>则人的一切记忆全部清除<br>此时闭目所见到的虚空<br>就是涅槃<br>涅槃的合理内核' +
                '<br>在于用胎儿期记忆<br>相关联的虚空记忆<br>彻底洗刷人类恐惧心里的底床<br>重新奠定人的基石<br>';
            var i=0;
            function typing() {
                var divTyping=document.getElementById('divTyping');
                if(i<=str.length) {
                    divTyping.innerHTML =str.slice(0, i++) + '_';
                }
                else {
                    divTyping.innerHTML=str;
                }
                setTimeout('typing()', 300);
            }
            typing();
        </script>
    </body>
</html>