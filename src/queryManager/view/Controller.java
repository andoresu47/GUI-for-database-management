package queryManager.view;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.control.cell.CheckBoxTreeCell;

import java.net.URL;
import java.sql.*;
import java.util.ResourceBundle;

public class Controller implements Initializable{

    @FXML
    private TableView<ObservableList<StringProperty>> table;

    @FXML
    private TreeView<String> authorsTree;

    @FXML
    private TreeView<String> booksTree;

    @FXML
    private TreeView<String> publishersTree;

    @FXML
    private TreeView<String> yearsTree;

    @FXML
    private TreeView<String> subjectsTree;

    private Statement statement;

    @Override
    public void initialize(URL location, ResourceBundle resources) {

        Connection connection = null;
        try{
            // create a database connection
            connection = DriverManager.getConnection("jdbc:sqlite:.\\src\\queryManager\\database\\database.db");
            System.out.println("Connection to database: successful");
            this.statement = connection.createStatement();
            this.statement.setQueryTimeout(300);  // set timeout to 30 sec.

            ResultSet rs = this.statement.executeQuery("select Title, Author, Publisher, Year " +
                                                       "from Authors, Books, Publishers, WrittenBy, PublishedBy_On " +
                                                       "where " +
                                                       "WrittenBy.BookId = Books.BookId " +
                                                       "and " +
                                                       "WrittenBy.AuthorId = Authors.AuthorId " +
                    "and " +
                    "PublishedBy_On.BookId = Books.BookId " +
                    "and " +
                    "PublishedBy_On.PublisherId = Publishers.PublisherId");

            populateTable(rs);

            initializeAuthorsTree();
            initializeBooksTree();
            initializePublishersTree();
            initializeYearsTree();
            initializeSubjectsTree();

        }catch(SQLException e){
            System.err.println(e.getMessage());
        }
        finally
        {
            try
            {
                if(connection != null)
                    connection.close();
            }
            catch(SQLException e)
            {
                // connection close failed.
                System.err.println(e.getMessage());
            }
        }
    }

    /**
     * Method that initializes the Authors treeView with data from database
     * ordered alphabetically.
     */
    public void initializeAuthorsTree(){
        CheckBoxTreeItem<String> rootItem = new CheckBoxTreeItem<>("All authors");
        rootItem.setExpanded(true);

        authorsTree.setRoot(rootItem);
        authorsTree.setEditable(true);

        authorsTree.setCellFactory(CheckBoxTreeCell.forTreeView());

        authorsTree.prefWidthProperty().bind(this.table.widthProperty().divide(4));

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
        CheckBoxTreeItem<String> rootItem = new CheckBoxTreeItem<>("All books");
        rootItem.setExpanded(true);

        booksTree.setRoot(rootItem);
        booksTree.setEditable(true);

        booksTree.setCellFactory(CheckBoxTreeCell.forTreeView());

        booksTree.prefWidthProperty().bind(this.table.widthProperty().divide(4));

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
        CheckBoxTreeItem<String> rootItem = new CheckBoxTreeItem<>("All publishers");
        rootItem.setExpanded(true);

        publishersTree.setRoot(rootItem);
        publishersTree.setEditable(true);

        publishersTree.setCellFactory(CheckBoxTreeCell.forTreeView());

        publishersTree.prefWidthProperty().bind(this.table.widthProperty().divide(4));

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
        CheckBoxTreeItem<String> rootItem = new CheckBoxTreeItem<>("All years");
        rootItem.setExpanded(true);

        yearsTree.setRoot(rootItem);
        yearsTree.setEditable(true);

        yearsTree.setCellFactory(CheckBoxTreeCell.forTreeView());

        yearsTree.prefWidthProperty().bind(this.table.widthProperty().divide(4));

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

    /**
     * Method for initializing the subjects tree
     */
    public void initializeSubjectsTree(){
        CheckBoxTreeItem<String> rootItem = new CheckBoxTreeItem<>("All subjects");
        rootItem.setExpanded(true);

        subjectsTree.setRoot(rootItem);
        subjectsTree.setEditable(true);

        subjectsTree.setCellFactory(CheckBoxTreeCell.forTreeView());

        subjectsTree.prefWidthProperty().bind(this.table.widthProperty().divide(4));

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

    /**
     * Method for populating a table with data extracted from an SQL query.
     * @param rs - result set containing data from a certain query previously made to
     *           a database.
     */
    public synchronized void populateTable(ResultSet rs){
        this.table.getItems().clear();
        this.table.getColumns().clear();
        this.table.setPlaceholder(new Label("Loading..."));

        try{
            ResultSetMetaData rsmd = rs.getMetaData();

            int columnsNumber = rsmd.getColumnCount();

            //Columns are created
            try{
                for(int column = 0; column < columnsNumber; column++){
                    this.table.getColumns().add(createColumn(column, rsmd.getColumnName(column+1), columnsNumber));
                }
            }catch(SQLException e){
                System.err.println(e.getMessage());
            }

            //Data gets poured into the columns.
            while(rs.next()){
                try{
                    ObservableList<StringProperty> data = FXCollections.observableArrayList();
                    for(int column = 1; column <= columnsNumber; column++){
                        data.add(new SimpleStringProperty(rs.getString(column)));
                    }
                    this.table.getItems().add(data);
                }catch (SQLException e){
                    System.err.println(e.getMessage());
                }
            }
        }catch(SQLException e){
            System.err.println(e.getMessage());
        }
    }

    /**
     * Method for creating table columns without necessarily binding
     * them to the structure of another class; as is usually done.
     * @param columnIndex - index in table of the column to create, starting at 0.
     * @param columnTitle - name/title of the column to create.
     * @return TableColumn - table column object created from a name received.
     */
    private TableColumn<ObservableList<StringProperty>, String> createColumn(int columnIndex, String columnTitle, int columnsNumber){
        TableColumn<ObservableList<StringProperty>, String> column = new TableColumn<>();
        String title;
        if (columnTitle == null || columnTitle.trim().length() == 0) {
            title = "Column " + (columnIndex + 1);
        } else {
            title = columnTitle;
        }
        column.setText(title);
        column.prefWidthProperty().bind(this.table.widthProperty().divide(columnsNumber));
        column.setCellValueFactory(cellDataFeatures -> {
                    ObservableList<StringProperty> values = cellDataFeatures.getValue();
                    if (columnIndex >= values.size()) {
                        return new SimpleStringProperty("");
                    } else {
                        return cellDataFeatures.getValue().get(columnIndex);
                    }
                });
        return column;
    }
}
