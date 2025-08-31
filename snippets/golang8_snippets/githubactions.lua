local ls = require("luasnip") -- обязательно
local s = ls.snippet
local t = ls.text_node

return {

}


-- local ls = require("luasnip")
-- local s = ls.snippet
-- local t = ls.text_node
-- local i = ls.insert_node
-- local c = ls.choice_node

-- return {
--   -- GitHub Actions - Action - Branding snippet
--   s("gha-action-branding", {
--     t("branding:\n  color: "),
--     c(1, {
--       t("blue"), t("green"), t("orange"), t("purple"),
--       t("red"), t("yellow"), t("gray-dark"),
--     }),
--     t("\n  icon: "),
--     c(2, {
--       t("alert"), t("arrow-down-circle"), t("arrow-right-circle"), t("arrow-up-circle"),
--       t("bar-chart"), t("bell"), t("book"), t("bookmark"), t("briefcase"), t("calendar"),
--       t("check-circle"), t("check-square"), t("chevron-down"), t("chevron-left"), t("chevron-right"),
--       t("chevron-up"), t("clock"), t("cloud"), t("code"), t("codesandbox"), t("coffee"),
--       t("columns"), t("command"), t("cpu"), t("credit-card"), t("crosshair"), t("disc"),
--       t("dollar-sign"), t("download"), t("edit"), t("file"), t("file-text"), t("flag"),
--       t("folder"), t("git-branch"), t("git-commit"), t("git-merge"), t("git-pull-request"),
--       t("globe"), t("grid"), t("heart"), t("help-circle"), t("home"), t("image"), t("inbox"),
--       t("info"), t("layout"), t("life-buoy"), t("link"), t("list"), t("lock"), t("mail"),
--       t("map"), t("menu"), t("message-circle"), t("message-square"), t("minus-circle"),
--       t("minus-square"), t("monitor"), t("music"), t("package"), t("paperclip"), t("pen-tool"),
--       t("percent"), t("phone"), t("pie-chart"), t("play"), t("plus-circle"), t("plus-square"),
--       t("pocket"), t("printer"), t("radio"), t("refresh-cloud"), t("repeat"), t("save"),
--       t("search"), t("send"), t("server"), t("settings"), t("shield"), t("shopping-cart"),
--       t("shuffle"), t("sidebar"), t("sliders"), t("smartphone"), t("speaker"), t("star"),
--       t("stop-circle"), t("sun"), t("tag"), t("target"), t("terminal"), t("thumbs-down"),
--       t("thumbs-up"), t("trash"), t("triangle"), t("truck"), t("tv"), t("umbrella"),
--       t("upload"), t("user"), t("users"), t("video"), t("watch"), t("wifi"), t("x-circle"),
--       t("x-square"), t("zoom-in"), t("zoom-out"),
--     }),
--   }),

--   -- GitHub Actions - Action - Step Env snippet
--   s("gha-action-step-env", {
--     t({"    env:", 
--        "      GITHUB_ACTOR: ${{ github.actor }}",
--        "      GITHUB_REF: ${{ github.ref }}",
--        "      GITHUB_REPOSITORY: ${{ github.repository }}",
--        "      GITHUB_SHA: ${{ github.sha }}",
--        "      GITHUB_WORKSPACE: ${{ github.workspace }}",
--        "      RUNNER_ARCH: ${{ runner.arch }}",
--        "      RUNNER_OS: ${{ runner.os }}",
--     }),
--   }),


--   s("gha-composite-action", {
--     t("name: "), i(1, "GitHub Composite Action"), t({"", "author: "}), i(2, "Your Name"), t({"", "description: "}), i(3, "Describe the composite action"), t({""}),
--     t("inputs:"), t({"", "  "}), i(4, "input_name"), t({":"}), t({"", "    description: "}), i(5, "Input description"), t({"", "    required: "}), c(6, {t("true"), t("false")}), t({"", "    default: "}), i(7, "default_value"), t({""}),
--     t("outputs:"), t({"", "  "}), i(8, "output_name"), t({":"}), t({"", "    description: "}), i(9, "Output description"), t({"", "    value: ${{ steps."}), i(10, "step_id"), t(".outputs.result }}"), t({""}),
--     t("runs:"), t({"", "  using: composite", "  steps:", "    - name: Checkout Repository", "      id: checkout-repository", "      uses: actions/checkout@v4", "", "    - name: "}), 
--     i(11, "Your Step Name"), t({""}), t("      id: "), i(12, "your-step-id"), t({""}), t("      run: "), i(13, "echo 'Hello World'"), t({""}), t("      shell: "), c(14, {t("bash"), t("pwsh"), t("sh")}), t({""}),
--   }),

--    s("gha-composite-action-step-run", {
--     t("    - name: "), i(1, "Run Command"), t({"", "      id: "}), i(2, "step_id"), t({"", "      if: ${{ "}), i(3, "true"), t(" }}"),
--     t({"", "      shell: "}), c(4, {t("bash"), t("pwsh"), t("sh")}), t({"", "      run: |", "        "}), i(5, "echo 'Hello World'")
--   }),

--   s("gha-composite-action-step-uses", {
--     t("    - name: "), i(1, "Use Existing Action"), t({"", "      id: "}), i(2, "step_id"), t({"", "      uses: "}), i(3, "actions/checkout@v4"),
--     t({"", "      with:", "        "}), i(4, "input_name"), t(": "), i(5, "input_value")
--   }),

--   s("gha-docker-action", {
--     t("name: "), i(1, "Docker GitHub Action"), t({"", "author: "}), i(2, "Your Name"), t({"", "description: "}), i(3, "Describe the Docker-based action"), t({""}),
--     t("inputs:"), t({"", "  "}), i(4, "input_name"), t({":"}), t({"", "    description: "}), i(5, "Input description"), t({"", "    required: "}), c(6, {t("true"), t("false")}), t({"", "    default: "}), i(7, "default_value"), t({""}),
--     t("outputs:"), t({"", "  "}), i(8, "output_name"), t({":"}), t({"", "    description: "}), i(9, "Output description"), t({""}),
--     t("runs:"), t({"", "  using: docker", "  image: "}), i(10, "Dockerfile"), t({"", "  args:", "    - "}), i(11, "--arg value")
--   }),

--   s("gha-node-action", {
--     t("name: "), i(1, "Node.js GitHub Action"), t({"", "author: "}), i(2, "Your Name"), t({"", "description: "}), i(3, "Describe the Node.js action"), t({""}),
--     t("inputs:"), t({"", "  "}), i(4, "input_name"), t({":"}), t({"", "    description: "}), i(5, "Input description"), t({"", "    required: "}), c(6, {t("true"), t("false")}), t({"", "    default: "}), i(7, "default_value"), t({""}),
--     t("outputs:"), t({"", "  "}), i(8, "output_name"), t({":"}), t({"", "    description: "}), i(9, "Output description"), t({""}),
--     t("runs:"), t({"", "  using: node20", "  main: "}), i(10, "./dist/index.js")
--   }),

--   s("gha-workflow", {
--     t("name: "), i(1, "GitHub Workflow"), t({"", "", "on:", "  - push", "  - pull_request", "", "jobs:", "  "}), i(2, "build"), t({":"}),
--     t({"", "    runs-on: "}), c(3, {t("ubuntu-latest"), t("windows-latest"), t("macos-latest")}), t({"", "    steps:", "      - name: Checkout Repository", "        id: checkout-repository", "        uses: actions/checkout@v4", "", "      - name: Setup Node.js", "        id: setup-node", "        uses: actions/setup-node@v4", "        with:", "          node-version: '"}), c(4, {t("18"), t("20")}), t({"'", "", "      - name: Install Dependencies", "        id: install-dependencies", "        run: npm install", "", "      - name: Run Tests", "        id: run-tests", "        run: npm test", ""})
--   }),

--    s("gha-workflow-job", {
--     t("jobs:"), t({"", "  "}), i(1, "job_name"), t({":"}),
--     t({"", "    runs-on: "}), c(2, {t("ubuntu-latest"), t("windows-latest"), t("macos-latest")}),
--     t({"", "    steps:", "      - name: Print Job Status", "        id: print-job-status", "        run: echo \"Job Status: ${{ job.status }}\""})
--   }),

--     s("gha-workflow-job-step-run", {
--     t("      - name: "), i(1, "Run Command"),
--     t({"", "        id: "}), i(2, "step_id"),
--     t({"", "        if: ${{ "}), i(3, "true"), t(" }}"),
--     t({"", "        shell: "}), c(4, {t("bash"), t("pwsh"), t("sh")}),
--     t({"", "        run: |", "          "}), i(5, "echo 'Hello World'")
--   }),

--     s("gha-workflow-job-step-uses", {
--     t("      - name: "), i(1, "Use Existing Action"),
--     t({"", "        id: "}), i(2, "step_id"),
--     t({"", "        uses: "}), i(3, "actions/checkout@v4"),
--     t({"", "        with:", "          "}), i(4, "input_name"), t(": "), i(5, "input_value"),
--   }),

--    s("gha-on-issues-pr", {
--     t("on:"),
--     t({"", "  issues:"}),
--     t({"", "    types: ["}), i(1, "opened, edited, milestoned"), t("]"),
--     t({"", "", "  pull_request:"}),
--     t({"", "    types:"}),
--     t({"", "      - "}), i(2, "opened"),
--     t({"", "    branches:"}),
--     t({"", "      - '"}), i(3, "releases/**"), t("'"),
--   }),

--    s("gha-workflow-basic", {
--     t("name: "), i(1, "Demo Workflows"),
--     t({"", "", "on:"}),
--     t({"", "  push:"}),
--     t({"", "", "# A workflow run is made up of one or more jobs that can run sequentially or in parallel"}),
--     t({"", "jobs:"}),
--     t({"", "", "jobs:"}),
--     i(0)
--   }),

--    s("gha-jobs-multi", {
--     t("jobs:"),
--     t({"", "  build:"}),
--     t({"", "    name: Build"}),
--     t({"", "    needs: [ Development ]"}),
--     t({"", "    steps:"}),
--     t({"", "      - name: Build and deploy on Cloud"}),
--     t({"", "  dev:"}),
--     t({"", "    name: Development"}),
--     t({"", "    steps:"}),
--     t({"", "      - name: Run the developer"}),
--     t({"", "  Test:"}),
--     t({"", "    needs: [ build, dev ]"}),
--     t({"", "    name: Testing"}),
--     t({"", "    steps:"}),
--     t({"", "      - name: Testing the application"}),
--     i(0)
--   }),

--   s("gha-demo-workflow", {
--     t("name: Demo workflows"),
--     t({"", "", "on:"}),
--     t({"", "  # Triggers the workflow on push or pull request events but only for the \"main\" branch"}),
--     t({"", "  push:"}),
--     t({"", "    branches: [ \"main\" ]"}),
--     t({"", "", "# A workflow run is made up of one or more jobs that can run sequentially or in parallel"}),
--     t({"", "jobs:"}),
--     t({"", "  # This workflow contains a single job called \"build\""}),
--     t({"", "  build:"}),
--     t({"", "    # The type of runner that the job will run on"}),
--     t({"", "    runs-on: ubuntu-latest"}),
--     i(0)
--   }),

--   s("gha-ci-workflow", {
--     t({
--       "name: CI",
--       "",
--       "# Controls when the workflow will run",
--       "on:",
--       "  # Triggers the workflow on push or pull request events but only for the \"main\" branch",
--       "  push:",
--       "    branches: [ \"main\" ]",
--       "",
--       "# A workflow run is made up of one or more jobs that can run sequentially or in parallel",
--       "jobs:",
--       "  # This workflow contains a single job called \"build\"",
--       "  build:",
--       "    # The type of runner that the job will run on",
--       "    runs-on: ubuntu-latest",
--       "",
--       "    # Steps represent a sequence of tasks that will be executed as part of the job",
--       "    steps:",
--       "      # Checks out your repository under $GITHUB_WORKSPACE, so your job can access it",
--       "      - uses: actions/checkout@v4",
--       "",
--       "      # Runs a single command using the runners shell",
--       "      - name: Run a one-line script",
--       "        run: echo Hello, world!",
--     }),
--     i(0),
--   }),

--   s("gha-job-build", {
--     t({
--       "jobs:",
--       "",
--       "  # This workflow contains a single job called \"build\"",
--       "  build:",
--       "",
--       "    runs-on: ubuntu-latest",
--       "",
--       "    # Steps represent a sequence of tasks that will be executed as part of the job",
--       "    steps:",
--       "",
--       "      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it",
--       "      - uses: actions/checkout@v4",
--       "        if: ${{ github.event_name == 'pull_request' && github.event.action == 'unassigned' }}",
--       "        shell: zsh",
--       "        name: NPM Install Package",
--       "        run: npm install",
--       "        with:",
--       "          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}",
--       "          first_name: Github",
--       "          last_name: Action",
--       "          args: The ${{ github.event_name }} event triggered this step.",
--       "          entrypoint: /bin/echo",
--     }),
--     i(0),
--   }),

  
-- }
