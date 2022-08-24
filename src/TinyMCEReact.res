type editor

@deriving(abstract)
type init = {
  @optional height: int,
  @optional menubar: bool,
  @optional plugins: array<string>,
  @optional toolbar: string,
  @optional content_style: string,
}

module Editor = {
  // https://www.tiny.cloud/docs/tinymce/6/react-pm-bundle/
  @module("@tinymce/tinymce-react") @react.component
  external make: (
    ~apiKey: string=?,
    ~onInit: (unit, editor) => unit=?,
    ~initialValue: string=?,
    ~init: init=?,
  ) => React.element = "Editor"
}
