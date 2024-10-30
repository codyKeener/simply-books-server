import sqlite3
import json
from models import Author, AuthorBook

def get_all_authors():
  with sqlite3.connect("./simply_books.sqlite3") as conn:
    
      conn.row_factory = sqlite3.Row
      db_cursor = conn.cursor()
      
      db_cursor.execute("""
      SELECT
        a.id author_id,
        a.email,
        a.first_name,
        a.last_name,
        a.image author_image,
        a.favorite
      FROM Author a
      """)

      authors = []
      
      dataset = db_cursor.fetchall()
      
      for row in dataset:
        
          author = Author(row['author_id'], row['email'], row['first_name'], row['last_name'], 
                          row['author_image'], 
                              row['favorite'])
          
          authors.append(author.__dict__)
      
  return authors
