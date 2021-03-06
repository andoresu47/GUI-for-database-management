package queryManager;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;
import queryManager.view.Controller;

import java.io.IOException;
import java.sql.*;

public class MainApp extends Application {

    private Stage primaryStage;

    /**
     * Gets executed as the application starts.
     * @param primaryStage -
     * @throws Exception is anything goes wrong.
     */
    @Override
    public void start(Stage primaryStage) throws Exception{
        this.primaryStage = primaryStage;
        this.primaryStage.setTitle("Hello World");

        initLayout();
    }

    /**
     * Method that manages the loading of the fxml file and overall
     * initialization of the application.
     */
    public void initLayout(){
        try{
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(MainApp.class.getResource("view/layout.fxml"));
            BorderPane rootLayout = (BorderPane) loader.load();

            Scene scene = new Scene(rootLayout, 800, 500);
            primaryStage.setScene(scene);
            primaryStage.show();

        }catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        launch(args);
    }
}
