/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author AndresZamora
 */
public class UsuariosOperaciones {
    public ArrayList<Usuarios> getUsuarios()
    {
        SessionFactory sesion=HibernateUtil.getSessionFactory();
        Session session =sesion.openSession();
        Transaction tx=session.beginTransaction();
            //acá hacemos la magia
                ArrayList<Usuarios> arreglo=new ArrayList<Usuarios>();
                Query q=session.createQuery("from Usuarios");
                List<Usuarios> lista=q.list();
                Iterator<Usuarios> iter=lista.iterator();
            //acá termina la magia
        tx.commit();
        session.close();
        //acá ya terminados todo y solo tomamos la lista y la pasamos a una arraylist
        while(iter.hasNext())
        {
            Usuarios noti = (Usuarios) iter.next();
            arreglo.add(noti);
        }
        
        return arreglo;
        
    }
    public Usuarios getUsuarioPorId(int id)
    {
        SessionFactory factory=HibernateUtil.getSessionFactory();
        Session session=factory.openSession();
        Transaction tx=session.beginTransaction();
        Usuarios usr=(Usuarios)session.get(Usuarios.class, id);
        tx.commit();
        session.close();
        return usr;
    }
     public void updateUsuario(int id,String newNombre,String newCorreo)
    {
        SessionFactory factory=HibernateUtil.getSessionFactory();
        Session session=factory.openSession();
        Transaction tx=session.beginTransaction();
        Usuarios usr=(Usuarios)session.get(Usuarios.class, id);
        usr.setNombre(newNombre);
        usr.setCorreo(newCorreo);
        session.update(usr);
        tx.commit();
        session.close();
    }
     public void deleteUsuario(int id)
     {
         SessionFactory factory=HibernateUtil.getSessionFactory();
        Session session=factory.openSession();
        Transaction tx=session.beginTransaction();
        Usuarios usr=(Usuarios)session.get(Usuarios.class, id);
        session.delete(usr);
        tx.commit();
        session.close();
     }
    public void addUsuario(Usuarios user)
    {
        SessionFactory factory=HibernateUtil.getSessionFactory();
        Session session=factory.openSession();
        Transaction tx=session.beginTransaction();
        session.save(user);
        tx.commit();
        session.close();
    }
}
