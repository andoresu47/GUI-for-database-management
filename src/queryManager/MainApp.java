package queryManager;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.sql.*;

public class MainApp extends Application {

    private Connection connection = null;

    /**
     * Constructor which initializes the connection to the database.
     */
    public MainApp(){
        try{
            // create a database connection
            this.connection = DriverManager.getConnection("jdbc:sqlite:.\\src\\queryManager\\database\\database.db");
            Statement statement = connection.createStatement();
            statement.setQueryTimeout(30);  // set timeout to 30 sec.

        }catch(SQLException e){
            System.err.println(e.getMessage());
        }
    }

    /**
     * Gets executed as the application starts.
     * @param primaryStage -
     * @throws Exception is anything goes wrong.
     */
    @Override
    public void start(Stage primaryStage) throws Exception{
        Parent root = FXMLLoader.load(getClass().getResource("view/layout.fxml"));
        primaryStage.setTitle("Hello World");
        primaryStage.setScene(new Scene(root, 300, 275));
        primaryStage.show();
    }

    /**
     * Main method.
     * @param args
     */
    public static void main(String[] args) {
        launch(args);
    }
}
