import React from 'react';
import About from './about.jsx';
import More from './more.jsx';
import styles from '../../dist/styles/app.css';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      instructors: null,
    };
    this.update = this.update.bind(this);
    this.renderInstructors = this.renderInstructors.bind(this);
    this.renderCourses = this.renderCourses.bind(this);
  }

  componentDidMount() {
    this.update();
  }

  update() {
    console.log('pre', this.state.instructors);
    fetch('/' + window.location.pathname.split('/')[2] + '/instructors')
      .then(response => response.json())
      .then((data) => {
        this.setState({
          instructors: data,
        });
        console.log('post', this.state.instructors);
      });
  }

  renderInstructors() {
    let instructors;
    console.log('render', this.state.instructors);
    if (this.state.instructors) {
      instructors = [
        <div key={'header'} className={styles.aboutHeader}>
          {this.state.instructors.length > 1 ? 'About the instructors' : 'About the instructor'}
        </div>,
        this.state.instructors
          .map((inst, i) => <div key={i} className={styles.aboutInstructor}>
        <About key={i} info={this.state.instructors[i]} /></div>),
      ];
    } else {
      instructors = null;
    }
    return instructors;
  }

  renderCourses() {
    let courses;
    if (this.state.instructors) {
      courses = this.state.instructors.slice(0, 3)
        .map((inst, i) => <More key={i} info={this.state.instructors[i]} />);
    } else {
      courses = null;
    }
    return courses;
  }

  render() {
    return (
      <div className={styles.leftCol}>
        <div className={styles.aboutInstructors}>
          {this.renderInstructors()}
        </div>
        <div className={styles.instructorCourses}>
          {this.renderCourses()}
        </div>
      </div>
    );
  }
}

export default App;
