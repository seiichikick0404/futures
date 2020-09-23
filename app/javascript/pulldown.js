
function pullDown() {

  const pullDownButton = document.getElementById('lists')
  const pullDownLists = document.getElementById('pull-down')
  
  pullDownButton.addEventListener('mouseover', function(){
    pullDownButton.setAttribute("style", "border: solid")
  })

  pullDownButton.addEventListener('mouseout', function(){
    pullDownButton.removeAttribute("style", "border-style:none;")
  })

  pullDownButton.addEventListener('click', function(){
    if (pullDownLists.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownLists.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownLists.setAttribute("style", "display:block;")
    }
  })
}
window.addEventListener('load', pullDown)