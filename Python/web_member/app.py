from flask import Flask, render_template,redirect,request
from web_member.model import member as m

m_service = m.Service()

app = Flask(__name__)  #웹 어플리케이션 객체 생성

@app.route('/')
def mem_list():
    arr = m_service.printAll()
    return render_template('index.html', mlist=arr)

@app.route('/member/form', methods=['GET']) #지정안하면 GET방식
def mem_add_get():
    return render_template('member/form.html')

@app.route('/member/form/', methods=['POST']) #전송방식이 다르기때문에 같은 url이어도 충돌 X
def mem_add_post():
    id = request.form['id']
    pwd = request.form['pwd']
    name = request.form['name']
    email = request.form['email']
    m_service.addMember(id=id, pwd=pwd, name=name, email=email)
    return redirect('/')

@app.route('/member/get')
def mem_get():
    id = request.args.get('id', 'none', str)
    m = m_service.getMemberById(id)
    return render_template('member/detail.html', m=m)


@app.route('/member/edit', methods=['POST']) #POST
def mem_edit():
    id = request.form['id']
    pwd = request.form['pwd']
    name = request.form['name']
    email = request.form['email']
    m_service.editMember(id=id, pwd=pwd, name=name, email=email)
    return redirect('/')


@app.route('/member/del')
def mem_del():
    id = request.args.get('id', 'none', str)
    m_service.delMember(id)
    return redirect('/')



if __name__ == '__main__':
    app.run()#flask 서버 실행