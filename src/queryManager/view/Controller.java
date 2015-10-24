package queryManager.view;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.CheckBoxTreeItem;
import javafx.scene.control.TableView;
import javafx.scene.control.TreeView;
import javafx.scene.control.cell.CheckBoxTreeCell;
import queryManager.MainApp;

import java.net.URL;
import java.sql.*;
import java.util.ResourceBundle;

public class Controller implements Initializable{

    @FXML
    private TableView table;

    @FXML
    private TreeView<String> authorsTree;

    @FXML
    private TreeView<String> booksTree;

    @FXML
    private TreeView<String> publishersTree;

    @FXML
    private TreeView<String> yearsTree;

    @FXML
    private TreeView<String> genresTree;

    private Statement statement;
    private MainApp mainApp;

    public void setStatement(Statement statement){
        this.statement = statement;
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {

        try{
            // create a database connection
            Connection connection = DriverManager.getConnection("jdbc:sqlite:.\\src\\queryManager\\database\\database.db");
            System.out.println("Connection to database: successful");
            this.statement = connection.createStatement();
            this.statement.setQueryTimeout(30);  // set timeout to 30 sec.

        }catch(SQLException e){
            System.err.println(e.getMessage());
        }

        initializeAuthorsTree();
        //initializeBooksTree();
        //initializePublishersTree();
        //initializeYearsTree();
        //initializeGenresTree();
    }

    public void initializeAuthorsTree(){
        CheckBoxTreeItem<String> rootItem = new CheckBoxTreeItem<>("Authors");
        rootItem.setExpanded(true);

        authorsTree.setRoot(rootItem);
        authorsTree.setEditable(true);

        authorsTree.setCellFactory(CheckBoxTreeCell.forTreeView());

        try{
            ResultSet rs = statement.executeQuery("select Author from Authors");
            while(rs.next()){
                CheckBoxTreeItem<String> checkBoxTreeItem = new CheckBoxTreeItem<>(rs.getString("Author"));

                checkBoxTreeItem.selectedProperty().addListener((observable, oldValue, newValue) -> {
                    if(newValue){
                        System.out.println("The selected item is " + checkBoxTreeItem.valueProperty().get());
                    }
                });
                rootItem.getChildren().add(checkBoxTreeItem);
            }

        }catch(SQLException e){
            System.err.println(e.getMessage());
        }
    }

    public void initializeBooksTree(){

    }

    public void initializePublishersTree(){

    }

    public void initializeYearsTree(){

    }

    public void initializeGenresTree(){

    }
}
