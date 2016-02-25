class Article extends React.Component {
  render () {
    return (
      <div>
        <div>Text: {this.props.text}</div>
      </div>
    );
  }
}

Article.propTypes = {
  text: React.PropTypes.string
};
