function add_human(human_num){
  let human_all = "";  
  for (i=1; i<=human_num; i++){
    if (i%10==0){
      human_text = `<div class="frame"><div><img src="human.png" class="human"></div><div style="font-size:x-small">プレイヤー` + i + "</div></div><br>"
    }
    else{
      human_text = `<div class="frame"><div><img src="human.png" class="human"></div><div style="font-size:x-small">プレイヤー` + i + "</div></div>"
    }

    human_all = human_all + human_text
  }
  human.innerHTML = human_all
}

function add_box(box_num){
  let box_all = "";  
  for (i=1; i<=box_num; i++){
    box_text = ""
    if (i%5==0){
      box_text += `<span class="boxcreate">リーグ` + i + `</span><br><br><br><br><br><br>`
    }
    else{
      box_text += `<span class="boxcreate">リーグ` + i + "</span>"
    }
    
    box_all = box_all + box_text
  }
  box.innerHTML = box_all
}

function humanNumber(){
  var human_num = document.getElementById("human_num").value;
  add_human(human_num)
}

function groupNumber(){
  var box_num = document.getElementById("box_num").value;
  add_box(box_num)
}

let human = document.querySelector("#human")
let box = document.querySelector("#box")
