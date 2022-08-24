open Jest
open Expect
open ReactTestingLibrary

// Make it pipe-first:
let toMatchSnapshot = a => a |> Expect.toMatchSnapshot

module Editor = {
  @react.component
  let make = () => {
    <div> <TinyMCEReact.Editor /> </div>
  }
}

describe("Editor", () => {
  beforeEach(() => {
    <Editor />->renderOnScreen
  })

  test("render Red option", () => {
    screen->expect->toMatchSnapshot
  })
})
