import java.sql.*;
import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        String url="jdbc:mysql://localhost:3306/sys?";
        String user="root";
        String password="secure";
        int alegere;
        try {
            Connection myConn = DriverManager.getConnection(url, user, password);
            Statement myStmt = myConn.createStatement();

            do {
                System.out.println("Ce vizualizare doriti sa vedeti ? \n 1-Cea compusa \n 2- Cea complexa");
                Scanner scanner = new Scanner(System.in);
                alegere=scanner.nextInt();
                switch (alegere) {
                    case(2):{
                        String sql = "SELECT * FROM sys.viz_cai ";
                        ResultSet rs = myStmt.executeQuery(sql);
                        ResultSetMetaData rsmd = rs.getMetaData();
                        int columnsNumber = rsmd.getColumnCount();
                        System.out.println("  COTELE CAILOR ");
                        System.out.println("  COTA | CAL | NUME |   RASA    |  DATA NASTERII");
                        while (rs.next()) {
                            for (int i = 1; i <= columnsNumber; i++) {

                                System.out.print(rs.getString(i) + " ");

                            }

                            System.out.println();

                        }
                        break;
                    }
                    case(1):{
                        String sql = "SELECT * FROM sys.viz_personal ";
                        ResultSet rs = myStmt.executeQuery(sql);
                        ResultSetMetaData rsmd = rs.getMetaData();
                        int columnsNumber = rsmd.getColumnCount();
                        System.out.println("  VIZUALIZARE PERSONAL CU JOBURI ");
                        while (rs.next()) {
                            for (int i = 1; i <= columnsNumber; i++) {

                                System.out.print(rs.getString(i) + " ");

                            }

                            System.out.println();

                        }
                        break;

                    }

                }
            }while(alegere == 1 || alegere == 2);
             System.out.println("\n\n Cati bani s-au utilizat pentru fiecare cal pentru achizionare de echipamente din firma Luxury ");
            String sql = "select sum(pret) Suma , id_cal\n" +
                    "from sys.echipamente\n" +
                    "group by id_cal,firma\n" +
                    "having firma ='Luxury';";
            ResultSet rs = myStmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int columnsNumber = rsmd.getColumnCount();
            System.out.println("SUMA  | CAL ");
            while (rs.next()) {
                for (int i = 1; i <= columnsNumber; i++) {

                    System.out.print(rs.getString(i) + " ");

                }

                System.out.println();

            }

            System.out.println(" Urmeaza caii si personalul pentru fiecare cal, \n "+
                    "pentru toti caii care au fost castigatori in pariuri cu suma de peste 1000 de lei.");
            sql = "select id_pariu, Par.id_cal,C.nume,C.rasa,C.data_nasterii,Pers.nume,Pers.prenume,Pers.salariu\n" +
                    "from pariuri Par left join cai C on(Par.id_cal=C.id_cal) \n" +
                    "\tjoin gestioneaza Gest on(Par.id_cal=Gest.id_cal) \n" +
                    "    join personal Pers on(Gest.id_personal=Pers.id_personal)\n" +
                    "where id_pariu in (select id_pariu\n" +
                    "\t\t\t\t\tfrom pariuri\n" +
                    "\t\t\t\t\twhere (id_cal,id_cursa,pozitie) in ( select *\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\tfrom rezultate))\n" +
                    "      and Par.suma > 1000;";
            rs = myStmt.executeQuery(sql);
            rsmd = rs.getMetaData();
            columnsNumber = rsmd.getColumnCount();
            System.out.println("IDP|ID_CAL|Nume|   Rasa   |Data nasterii|Nume angajat|Salariu|");
            while (rs.next()) {
                for (int i = 1; i <= columnsNumber; i++) {

                    System.out.print(rs.getString(i) + " ");

                }

                System.out.println();

            }

            do {
                System.out.println("Optiuni: \n 1-Afisare tabela \n 2-Stergere tabela \n 3-Inserare intr-o tabela");
                Scanner scanner = new Scanner(System.in);
                alegere=scanner.nextInt();
                switch (alegere) {
                    case(1): {
                        String Sql;
                        System.out.println("Introduceti tabela de afisat : ");
                        String tabel;
                        tabel = scanner.next();
                        int ordonat=0;
                        String conditieOrdonare;
                        System.out.println(" Rezultatul va fi ordonat? \n 1-DA \n 0-NU");
                        ordonat=scanner.nextInt();
                        if(ordonat==1){
                            System.out.println("Introduceti coloana de ordonare :");
                            conditieOrdonare=scanner.next();
                            Sql="SELECT * FROM sys." + tabel + "\n order by "+conditieOrdonare ;
                        }
                        else {
                            Sql = "SELECT * FROM sys." + tabel + ";";
                        }
                        ResultSet Rs = myStmt.executeQuery(Sql);
                        ResultSetMetaData Rsmd = Rs.getMetaData();
                        int ColumnsNumber = Rsmd.getColumnCount();
                        System.out.println("  " + tabel + "  ");
                        while (Rs.next()) {
                            for (int i = 1; i <= ColumnsNumber; i++) {

                                System.out.print(Rs.getString(i) + " ");

                            }

                            System.out.println();

                        }
                        break;
                    }
                    case(2):{
                        System.out.println("Introduceti tabela de sters : ");
                        String tabel;
                        tabel = scanner.next();
                        System.out.println("Introduceti conditia care determina liniile(fara spatii) :");
                        String conditie;
                        conditie=scanner.next();
                        String Sql = "DELETE FROM sys." + tabel + "\n where " + conditie ;
                        myStmt.execute(Sql);
                        break;
                    }
                    case(3):{
                        System.out.println("Introduceti tabela de inserare :");
                        String tabel;
                        tabel=scanner.next();
                        String cerere = "Select * from sys."+tabel;
                        ResultSet Rs = myStmt.executeQuery(cerere);
                        ResultSetMetaData Rsmd = Rs.getMetaData();
                        int numarColoane = Rsmd.getColumnCount();
                        Object [] valori = new Object[numarColoane+2];
                        for(int i=1;i<=numarColoane;i++) {
                            String coloana = Rsmd.getColumnLabel(i);
                            String tip = Rsmd.getColumnTypeName(i);
                            System.out.println(coloana+"("+tip+")  =");

                            if (scanner.hasNextInt()) {
                                valori[i] = scanner.nextInt();

                            } else if (scanner.hasNextDouble()) {
                                valori[i] = scanner.nextDouble();
                            } else if (scanner.hasNextBoolean()) {
                                valori[i] = scanner.nextBoolean();
                            } else {
                                valori[i] = scanner.next();
                            }

                        }
                        String input="INSERT INTO sys."+tabel+"\nvalues (";
                        for(int i=1;i<=numarColoane;i++){
                            if(i==1){
                                input=input.concat(valori[i].toString());
                            }
                            else {
                                input=input.concat(","+valori[i].toString());
                            }
                        }
                        input=input.concat(");");
                        System.out.println(input);
                        myStmt.executeUpdate(input);

                        break;

                    }
                }
            }while(alegere>=1 && alegere<=3);
            } catch(SQLException e){
                e.printStackTrace();
            }





    }
}
