package com.dr.crm.pojo;

public class Users {

    /**
     *撒大声地
     */
    private  Integer id;
    /**
     *阿萨德阿萨德
     */
    private  String name;
    /**阿萨德
     *啊实打实大阿萨德
     */
    private  String pwd;

    @Override
    public String toString() {
        return "Users{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", pwd='" + pwd + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
}
