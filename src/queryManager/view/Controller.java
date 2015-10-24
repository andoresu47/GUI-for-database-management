package queryManager.view;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.CheckBoxTreeItem;
import javafx.scene.control.TableView;
import javafx.scene.control.TreeView;
import javafx.scene.control.cell.CheckBoxTreeCell;

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
        initializeBooksTree();
        initializePublishersTree();
        initializeYearsTree();
        initializeGenresTree();
    }

    /**
     * Method that initializes the Authors treeView with data from database
     * ordered alphabetically.
     */
    public void initializeAuthorsTree(){
        CheckBoxTreeItem<String> rootItem = new CheckBoxTreeItem<>("Authors");
        rootItem.setExpanded(true);

        authorsTree.setRoot(rootItem);
        authorsTree.setEditable(true);

        authorsTree.setCellFactory(CheckBoxTreeCell.forTreeView());

        try{
            ResultSet rs = statement.executeQuery("select Author from Authors order by Author collate nocase");
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

    /**
     * Method that initializes the Books treeView with data from database
     * ordered alphabetically.
     */
    public void initializeBooksTree(){
        CheckBoxTreeItem<String> rootItem = new CheckBoxTreeItem<>("Books");
        rootItem.setExpanded(true);

        booksTree.setRoot(rootItem);
        booksTree.setEditable(true);

        booksTree.setCellFactory(CheckBoxTreeCell.forTreeView());

        try{
            ResultSet rs = statement.executeQuery("select Title from Books order by Title collate nocase");
            while(rs.next()){
                CheckBoxTreeItem<String> checkBoxTreeItem = new CheckBoxTreeItem<>(rs.getString("Title"));

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

    public void initializePublishersTree(){
        CheckBoxTreeItem<String> rootItem = new CheckBoxTreeItem<>("Publishers");
        rootItem.setExpanded(true);

        publishersTree.setRoot(rootItem);
        publishersTree.setEditable(true);

        publishersTree.setCellFactory(CheckBoxTreeCell.forTreeView());

        try{
            ResultSet rs = statement.executeQuery("select Publisher from Publishers order by Publisher collate nocase");
            while(rs.next()){
                CheckBoxTreeItem<String> checkBoxTreeItem = new CheckBoxTreeItem<>(rs.getString("Publisher"));

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

    public void initializeYearsTree(){
        CheckBoxTreeItem<String> rootItem = new CheckBoxTreeItem<>("Years");
        rootItem.setExpanded(true);

        yearsTree.setRoot(rootItem);
        yearsTree.setEditable(true);

        yearsTree.setCellFactory(CheckBoxTreeCell.forTreeView());

        try{
            ResultSet rs = statement.executeQuery("select distinct Year from PublishedBy_On order by Year");
            while(rs.next()){
                CheckBoxTreeItem<String> checkBoxTreeItem = new CheckBoxTreeItem<>(rs.getString("Year"));

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

    public void initializeGenresTree(){
        CheckBoxTreeItem<String> rootItem = new CheckBoxTreeItem<>("Subject");
        rootItem.setExpanded(true);

        genresTree.setRoot(rootItem);
        genresTree.setEditable(true);

        genresTree.setCellFactory(CheckBoxTreeCell.forTreeView());

        try{
            ResultSet rs = statement.executeQuery("select Subject from Subjects order by Subject collate nocase");
            while(rs.next()){
                CheckBoxTreeItem<String> checkBoxTreeItem = new CheckBoxTreeItem<>(rs.getString("Subject"));

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
}
