/// @description Variable init
check = 0;
txtContent = array_create(0);
characterFocus = []
num = 0;

function typeSay(txt, box1 = 0, box2 = 0, txtSpeed = 0, charFocus = 0) {
	num = array_length(txtContent);
	txtContent[num] = txt;
	//character portraits
	txtContent[num+1] = box1;
	txtContent[num+2] = box2;
	array_push(characterFocus, charFocus);
	//text speed
	txtContent[num+3] = txtSpeed;
}