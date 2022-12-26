package helper;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class User_Authe {

	public static boolean authen(String Name, String Email, String Password) {

		boolean user = false;
		try {
			Session sess = FactoryProvider.getFactory().openSession();
			Transaction tx = sess.beginTransaction();

			String query = "from Register where Email =:e and Password =:p";
			@SuppressWarnings("rawtypes")
			Query q = sess.createQuery(query);
			q.setParameter("e", Email);
			q.setParameter("p", Password);

			if (q.list().size() > 0) {

				user = true;

			} else {

				user = false;

			}
			tx.commit();

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return user;

	}

	public static boolean authen(String Email) {

		boolean user = false;
		try {
			Session sess = FactoryProvider.getFactory().openSession();
			Transaction tx = sess.beginTransaction();

			String query = "from Register where Email =:e";
			@SuppressWarnings("rawtypes")
			Query q = sess.createQuery(query);
			q.setParameter("e", Email);

			if (q.list().size() > 0) {

				user = true;

			} else {

				user = false;

			}
			tx.commit();

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return user;

	}
}