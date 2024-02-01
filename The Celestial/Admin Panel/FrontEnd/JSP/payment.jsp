<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleResultSetMetaData"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Record Displayer</title>
        <!--STEP 2: ADDING A INTERNAL STYLE FOR TABLE-->
        <style>
    table {
        width: 100%;
        border-collapse: collapse;
        border-spacing: 0;
        margin-bottom: 20px;
        border: 2px solid #6c757d; /* Border color */
        background-color: #f8f9fa; /* Table background color */
    }

    th, td {
        padding: 8px 12px;
        text-align: left;
        border-bottom: 1px solid #6c757d; /* Border color */
    }

    th {
        background-color: #343a40; /* Header background color */
        color: #ffffff; /* Header text color */
    }

    tr:nth-child(even) {
        background-color: #f2f2f2; /* Even row background color */
    }

    tr:hover {
        background-color: #d9edf7; /* Hovered row background color */
    }

    caption {
        font-weight: bold;
        font-size: 1.2em;
        margin-bottom: 10px;
    }
</style>

    </head>
    <%!
        // STEP 3: DECLARING OBJECTS AND VARIABLES
            OracleConnection oconn;
            OraclePreparedStatement ops;
            OracleResultSet ors;
            OracleResultSetMetaData orsmd;
            int counter, reccounter, colcounter;
        %>
        <%
            // STEP 4: REGISTRATION OF ORACLE DRIVER
            DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
            
            // STEP 5: INSTANTIATING TH             E CONNECTION
            oconn = 
                    (OracleConnection)
                    DriverManager.getConnection
        ("jdbc:oracle:thin:@AMBIKA:1521:orcl","TIITA","DATABASE");
            
            // STEP 6: INSTANTIATING THE STATEMENT OBJECT
            ops = (OraclePreparedStatement)oconn.prepareCall("select * from payment");
            
            // STEP 7: FILLING UP THE DATABASE RECORDS IN A TEMPORARY CONTAINER
            ors = (OracleResultSet)ops.executeQuery();
            
            // STEP 8: GETTING THE COLUMNS INFORMATION(METADATA)
            orsmd = (OracleResultSetMetaData)ors.getMetaData();
            %>
    <body style="background-color: black">
        <!--STEP 1: BASIC STRUCTURE OF A TABLE-->
        <table>
            <thead>
                <tr>
                    <%
                        // STEP 9: BRINGING THE TABLE HEADINGS
                        for(counter = 1; counter <= orsmd.getColumnCount(); counter ++)
                        {
                        %>
                        <th><%=orsmd.getColumnName(counter)%></th>
                        <%
                            }
                        %>
                     <th>ACTION</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // STEP 10: BRINGING ALL THE RECORDS AND DISPLAYING AS TABLE ROWS
                    while(ors.next() == true)
                    {
                    %>
                <tr>
                    <%
                       for(counter = 1; counter <= orsmd.getColumnCount(); counter ++)
                        {
                        %>
                        <th><%=ors.getString(counter)%></th>
                        <%
                            }
                        %>
                    <td>
                        <button>Edit</button><button>Delete</button>
                        </td>
                </tr>
                <%
                    }
                    %>
            </tbody>
            
        </table>
                    <%
                        // STEP 11: CLOSING THE CONNECTIONS
                        ors.close();
                        ops.close();
                        oconn.close();
                        %>
    </body>
</html>