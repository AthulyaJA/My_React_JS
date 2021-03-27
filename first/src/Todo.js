
import React, { Component } from 'react';
class TodoApp extends Component {
    constructor(props) {
      super(props);
      this.state = { items: [], text: '' };
      this.handleChange = this.handleChange.bind(this);
      this.handleSubmit = this.handleSubmit.bind(this);
      
      
      this.state = {
        items: [{ id: 1, value: 0 }, { id: 2, value: 10 }, { id: 3, value: 0 }]
      };
     this.handleDelete = itemId => {
        const items = this.state.items.filter(item => item.id !== itemId);
        this.setState({ items: items });
      };
    }
  
    render() {
      return (
          
          
        <div>
          <h3>TODO list</h3>
          <TodoList items={this.state.items} />
          <form onSubmit={this.handleSubmit}>
            <label htmlFor="new-todo">
             Type Here
            </label>
            <input
              id="new-todo"
              onChange={this.handleChange}
              value={this.state.text}
            />
            <button>
              Add {this.state.items.length + 1}
            </button>
          </form>
        </div>
      );
    }
    handleDelete = itemId => {
        const items = this.state.items.filter(item => item.id !== itemId);
        this.setState({ items: items });
      };
    handleChange(e) {
      this.setState({ text: e.target.value });
    }
  
    handleSubmit(e) {
      e.preventDefault();
      if (this.state.text.length === 0) {
        return;
      }
      const newItem = {
        text: this.state.text,
        id: Date.now()
      };
      this.setState(state => ({
        items: state.items.concat(newItem),
        text: ''
      }));
    }
  }
  
  class TodoList extends React.Component {
    render() {
      return (
        <ul>
          {this.props.items.map(item => (
            <li key={item.id}>{item.text}<button onDelete={this.handleDelete} key={item.id}>Delete</button></li>
          ))}

        </ul>
      );
    }
  }
  
  export default TodoApp  ;