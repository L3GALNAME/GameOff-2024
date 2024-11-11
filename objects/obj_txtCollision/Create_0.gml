/// @description Variable init
check = 0
txtContent = array_create(0)

function typeSay(txt, box1 = 0, box2 = 0, txtSpeed = 0) {
	var num = array_length(txtContent)
	global.text[4] = num/4
	txtContent[num] = txt
	//character portraits
	txtContent[num+1] = box1
	txtContent[num+2] = box2
	//text speed
	txtContent[num+3] = txtSpeed
}