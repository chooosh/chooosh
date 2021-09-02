import cx_Oracle


class Member:
    def __init__(self, id=None, pwd=None, name=None, email=None):  # 생성자. 객체 멤버 변수 정의
        self.__id = id
        self.__pwd = pwd
        self.__name = name
        self.__email = email

    def __str__(self):  # 자바의 toString().
        return 'id:' + str(self.__id) + ' / pwd:' + str(self.__pwd) + ' / name:' + str(self.__name) + ' / email:' + str(
            self.__email)

    def setId(self, id):
        self.__id = id

    def getId(self):
        return self.__id

    def setPwd(self, pwd):
        self.__pwd = pwd

    def getPwd(self):
        return self.__pwd

    def setName(self, name):
        self.__name = name

    def getName(self):
        return self.__name

    def setEmail(self, email):
        self.__email = email

    def getEmail(self):
        return self.__email


class Dao:  # db 작업 전담
    def __init__(self):
        self.conn = None  # 커넥션 객체

    def connect(self):
        self.conn = cx_Oracle.connect("sideon", "sideon", "localhost:1521/XE", encoding='utf-8')
        return self.conn.cursor()

    def insert(self, m):
        cursor = self.connect()
        sql = 'insert into p_member values(:1, :2, :3, :4)'
        d = (m.getId(), m.getPwd(), m.getName(), m.getEmail())
        cursor.execute(sql, d)
        self.conn.commit()
        self.conn.close()

    def selectById(self, id):
        res = []
        cursor = self.connect()
        sql = 'select * from p_member where id=:1'
        d = (id,)
        cursor.execute(sql, d)
        for row in cursor:
            res.append(Member(row[0], row[1], row[2], row[3]))
        self.conn.close()
        return res

    def selectAll(self):
        res = []
        cursor = self.connect()
        sql = 'select * from p_member'
        cursor.execute(sql)
        for row in cursor:
            res.append(Member(row[0], row[1], row[2], row[3]))
        self.conn.close()
        return res

    def update(self, m):
        cursor = self.connect()
        sql = 'update p_member set pwd=:1 where id=:2'
        d = (m.getPwd(), m.getId())
        cursor.execute(sql, d)
        self.conn.commit()
        self.conn.close()

    def delete(self, id):
        res = []
        cursor = self.connect()
        sql = 'delete p_member where id=:1'
        d = (id,)
        cursor.execute(sql, d)
        self.conn.commit()
        self.conn.close()

    def select_all(self):
        conn = cx_Oracle.connect("sideon", "sideon", "localhost:1521/xe", encoding='utf-8')
        cursor = conn.cursor()
        sql = 'select * from p_member'
        cursor.execute(sql)
        datas = []  # vo 담을 리스트
        for row in cursor:  # 검색결과 한줄 씩 추출 -> row에 담음음
            datas.append(Member(row[0], row[1], row[2], row[3]))
        conn.close()
        return datas


class Service:  # 비즈니스 로직. 외부에 제공할 기능구현
    def __init__(self):
        self.__dao = Dao()

    def addMember(self, m):
        self.__dao.insert(m)

    def getMemberById(self, id):
        return self.__dao.selectById(id)

    def editMember(self, m):
        self.__dao.update(m)

    def delMember(self, id):
        self.__dao.delete(id)

    def printAll(self):
        return self.__dao.selectAll()

#
# def main():
#     dao = Dao()
#     datas = dao.select_all()
#     for t in datas:
#         t.print()
#
# main()
