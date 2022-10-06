function checkBook(){
	let bookId = document.querySelector("bookId");
	let name = document.querySelector("name");
	let unitPrice = document.querySelector("price");
	let unitsInStock = document.querySelector("stock");

 	// 도서 아이디 체크
   if (!check(/^ISBN[0-9]{1,8}$/, bookId, "도서아이디는 ISBN으로 시작되고 숫자를 포함합니다."))
      return false;
   // 도서명 체크
   if(name.value.length < 5 || name.value.length > 12) {
      alert("도서명은 5~12자 이내로 입력 가능합니다.");
      name.focus();
      return false;
   }
   // 도서 가격 체크
   if (unitPrice.value.length == 0 || isNaN(unitPrice.value)) {
      alert("가격은 숫자만 입력 가능합니다.");
      unitPrice.focus();
      return false;
   }
   
   if (unitPrice.value < 0) {
      alert("가격은 음수 입력은 불가합니다.");
      unitPrice.focus();
      return false;
   }
   //재고 수 체크
   if (isNaN(unitsInStock.value)) {
      alert("재고수는 숫자만 입력 가능합니다.");
      unitsInStock.focus();
      return false;
   }
   
//   function check(regExp, e, msg) {
//      if (regExp.test(e.value)) {
//         return true;
//      }
//      alert(msg);
//      e.select();
//      e.focus();
//      return false;
//   }
   document.newBook.submit();
}
