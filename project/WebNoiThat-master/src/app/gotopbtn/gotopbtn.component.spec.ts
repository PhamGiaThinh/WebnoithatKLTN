import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { GotopbtnComponent } from './gotopbtn.component';

describe('GotopbtnComponent', () => {
  let component: GotopbtnComponent;
  let fixture: ComponentFixture<GotopbtnComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ GotopbtnComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(GotopbtnComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
