import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-gotopbtn',
  templateUrl: './gotopbtn.component.html',
  styleUrls: ['./gotopbtn.component.css']
})
export class GotopbtnComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }
  goTop(){
    var btn= document.getElementById("goTop");
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
  }

}
