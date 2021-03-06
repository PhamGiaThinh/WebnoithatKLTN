import { Injectable } from '@angular/core';
import { HttpClient ,HttpHeaders} from '@angular/common/http';
import { Observable, Subject } from 'rxjs';
import {tap} from 'rxjs/operators'


@Injectable({
  providedIn: 'root'
})
export class EmployeeService {

  private baseUrl = 'https://localhost:8443/api/employee';
  private url = 'https://localhost:8443/api/employeeuser';
  private urlUser = 'https://localhost:8443/api/user';

  private urlU = 'https://localhost:8443/api/employeeuser';
  private urlImg = 'https://localhost:8443/api/employeeimg';


  private _refresh = new Subject<void>();
  private headers= new HttpHeaders({
    'Content-Type': 'application/json',
    'Access-Control-Allow-Origin':'*'
    //'x-access-token':localStorage.getItem('token'),
    //'Authorization': 'Bearer' + localStorage.getItem('token')
  })
  private headerImg= new HttpHeaders({
    //'x-access-token':localStorage.getItem('token'),
    //'Authorization': 'Bearer' + localStorage.getItem('token')
  })

  private options = { headers: this.headers };
  private optionsImg = { headers: this.headerImg };
  
  constructor(private http: HttpClient) { }
 
  get refresh(){
    return this._refresh;
  }
  getList(): Observable<any>{
    return this.http.get(`${this.baseUrl}`, this.options);
  }
  
  //get object bu Id
  getById(id: number): Observable<any> {
    return this.http.get(`${this.baseUrl}/${id}`, this.options);
  }
  getUserById(id: number): Observable<any> {
    return this.http.get(`${this.urlUser}/${id}`, this.options);
  }

  //get Id by Id
  getIdByUserId(id: number): Observable<any> {
    return this.http.get(`${this.url}/${id}`, this.options);
  }
  

  createNew(ob: FormData): Observable<Object> {
    return this.http.post(`${this.baseUrl}`, ob, this.optionsImg).pipe(
      tap(()=> {
        this._refresh.next();
      })
    );
  }

  createNewAdmin(ob: FormData): Observable<Object> {
    return this.http.post(`${this.baseUrl+"/admin"}`, ob, this.optionsImg).pipe(
      tap(()=> {
        this._refresh.next();
      })
    );
  }

  update(id: number, value: any): Observable<Object> {
    return this.http.put(`${this.baseUrl}/${id}`, value, this.options).pipe(
      tap(()=> {
        this._refresh.next();
      })
    );
  }

  updateUser(id: number, value: any): Observable<Object> {
    return this.http.put(`${this.urlU}/${id}`, value, this.options).pipe(
      tap(()=> {
        this._refresh.next();
      })
    );
  }

  updateImg(fd: FormData,id: number): Observable<Object> {
    return this.http.put(`${this.urlImg}/${id}`, fd, this.optionsImg).pipe(
      tap(()=> {
        this._refresh.next();
      })
    );
  }
  delete(id: number): Observable<any> {
    return this.http.delete(`${this.baseUrl}/${id}`,this.options);
  }
}
