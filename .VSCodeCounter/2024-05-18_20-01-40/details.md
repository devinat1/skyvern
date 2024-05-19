# Details

Date : 2024-05-18 20:01:40

Directory /home/bond/Desktop/darkpatterncombined/agents/skyvern

Total : 238 files,  32309 codes, 780 comments, 3758 blanks, all 36847 lines

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)

## Files
| filename | language | code | comment | blank | total |
| :--- | :--- | ---: | ---: | ---: | ---: |
| [.dockerignore](/.dockerignore) | Ignore | 17 | 2 | 2 | 21 |
| [.flake8](/.flake8) | Ini | 13 | 0 | 0 | 13 |
| [.github/sync.yml](/.github/sync.yml) | YAML | 21 | 0 | 0 | 21 |
| [.github/workflows/build-docker-image.yml](/.github/workflows/build-docker-image.yml) | YAML | 45 | 0 | 9 | 54 |
| [.github/workflows/ci.yml](/.github/workflows/ci.yml) | YAML | 66 | 36 | 17 | 119 |
| [.github/workflows/inactive-issues-and-prs.yml](/.github/workflows/inactive-issues-and-prs.yml) | YAML | 22 | 0 | 2 | 24 |
| [.github/workflows/sync-skyvern-cloud.yml](/.github/workflows/sync-skyvern-cloud.yml) | YAML | 33 | 0 | 1 | 34 |
| [.pre-commit-config.yaml](/.pre-commit-config.yaml) | YAML | 74 | 7 | 6 | 87 |
| [CODE_OF_CONDUCT.md](/CODE_OF_CONDUCT.md) | Markdown | 101 | 0 | 34 | 135 |
| [CONTRIBUTING.md](/CONTRIBUTING.md) | Markdown | 112 | 25 | 47 | 184 |
| [Dockerfile](/Dockerfile) | Docker | 24 | 0 | 11 | 35 |
| [README.md](/README.md) | Markdown | 191 | 13 | 64 | 268 |
| [alembic.ini](/alembic.ini) | Ini | 92 | 1 | 25 | 118 |
| [alembic/README.md](/alembic/README.md) | Markdown | 25 | 0 | 6 | 31 |
| [alembic/env.py](/alembic/env.py) | Python | 47 | 12 | 23 | 82 |
| [alembic/versions/2024_03_01_0537-99423c1dec60_create_tables.py](/alembic/versions/2024_03_01_0537-99423c1dec60_create_tables.py) | Python | 270 | 5 | 10 | 285 |
| [alembic/versions/2024_03_13_0518-82a0c686152d_add_title_error_code_mapping_and_errors_.py](/alembic/versions/2024_03_13_0518-82a0c686152d_add_title_error_code_mapping_and_errors_.py) | Python | 22 | 7 | 10 | 39 |
| [alembic/versions/2024_03_22_0010-ffe2f57bd288_create_output_parameter.py](/alembic/versions/2024_03_22_0010-ffe2f57bd288_create_output_parameter.py) | Python | 71 | 5 | 10 | 86 |
| [alembic/versions/2024_04_03_2257-4630ab8c198e_create_bitwarden_credential_parameter_.py](/alembic/versions/2024_04_03_2257-4630ab8c198e_create_bitwarden_credential_parameter_.py) | Python | 53 | 5 | 10 | 68 |
| [alembic/versions/2024_04_08_2347-ea8e24d0bc8e_add_orgs_max_retries_per_step.py](/alembic/versions/2024_04_08_2347-ea8e24d0bc8e_add_orgs_max_retries_per_step.py) | Python | 16 | 5 | 10 | 31 |
| [alembic/versions/2024_04_09_0058-8335d7fecef9_add_new_indices_to_tasks_table.py](/alembic/versions/2024_04_09_0058-8335d7fecef9_add_new_indices_to_tasks_table.py) | Python | 19 | 5 | 9 | 33 |
| [alembic/versions/2024_04_23_2153-24303f1669a7_add_domain_to_organizations_table.py](/alembic/versions/2024_04_23_2153-24303f1669a7_add_domain_to_organizations_table.py) | Python | 18 | 5 | 10 | 33 |
| [alembic/versions/2024_04_28_2320-68d78072fdb5_add_org_task_step_index.py](/alembic/versions/2024_04_28_2320-68d78072fdb5_add_org_task_step_index.py) | Python | 15 | 5 | 9 | 29 |
| [alembic/versions/2024_05_05_0249-c4dca14a5e69_add_org_task_index_for_steps_table.py](/alembic/versions/2024_05_05_0249-c4dca14a5e69_add_org_task_index_for_steps_table.py) | Python | 15 | 5 | 9 | 29 |
| [alembic/versions/2024_05_11_2104-8792454ce498_add_max_steps_per_run_to_task.py](/alembic/versions/2024_05_11_2104-8792454ce498_add_max_steps_per_run_to_task.py) | Python | 16 | 5 | 10 | 31 |
| [alembic/versions/2024_05_14_0114-bf561125112f_add_workflow_permanent_id_and_version_.py](/alembic/versions/2024_05_14_0114-bf561125112f_add_workflow_permanent_id_and_version_.py) | Python | 18 | 5 | 10 | 33 |
| [alembic/versions/2024_05_14_0245-baec12642d77_add_workflow_permanent_id_constraint_.py](/alembic/versions/2024_05_14_0245-baec12642d77_add_workflow_permanent_id_constraint_.py) | Python | 26 | 5 | 10 | 41 |
| [docker-compose.yml](/docker-compose.yml) | YAML | 45 | 15 | 5 | 65 |
| [docs/README.md](/docs/README.md) | Markdown | 29 | 0 | 15 | 44 |
| [docs/api-reference/endpoint/create.mdx](/docs/api-reference/endpoint/create.mdx) | MDX | 4 | 0 | 1 | 5 |
| [docs/api-reference/endpoint/delete.mdx](/docs/api-reference/endpoint/delete.mdx) | MDX | 4 | 0 | 1 | 5 |
| [docs/api-reference/endpoint/get.mdx](/docs/api-reference/endpoint/get.mdx) | MDX | 4 | 0 | 1 | 5 |
| [docs/api-reference/introduction.mdx](/docs/api-reference/introduction.mdx) | MDX | 26 | 0 | 8 | 34 |
| [docs/api-reference/openapi.json](/docs/api-reference/openapi.json) | JSON | 195 | 0 | 0 | 195 |
| [docs/development.mdx](/docs/development.mdx) | MDX | 68 | 0 | 31 | 99 |
| [docs/essentials/code.mdx](/docs/essentials/code.mdx) | MDX | 29 | 0 | 9 | 38 |
| [docs/essentials/images.mdx](/docs/essentials/images.mdx) | MDX | 41 | 0 | 19 | 60 |
| [docs/essentials/markdown.mdx](/docs/essentials/markdown.mdx) | MDX | 57 | 0 | 32 | 89 |
| [docs/essentials/navigation.mdx](/docs/essentials/navigation.mdx) | MDX | 49 | 0 | 18 | 67 |
| [docs/essentials/reusable-snippets.mdx](/docs/essentials/reusable-snippets.mdx) | MDX | 78 | 0 | 33 | 111 |
| [docs/essentials/settings.mdx](/docs/essentials/settings.mdx) | MDX | 266 | 0 | 53 | 319 |
| [docs/favicon.svg](/docs/favicon.svg) | XML | 49 | 0 | 1 | 50 |
| [docs/introduction.mdx](/docs/introduction.mdx) | MDX | 64 | 0 | 8 | 72 |
| [docs/logo/dark.svg](/docs/logo/dark.svg) | XML | 55 | 0 | 1 | 56 |
| [docs/logo/light.svg](/docs/logo/light.svg) | XML | 51 | 0 | 1 | 52 |
| [docs/mint.json](/docs/mint.json) | JSON | 86 | 0 | 0 | 86 |
| [docs/quickstart.mdx](/docs/quickstart.mdx) | MDX | 70 | 0 | 17 | 87 |
| [docs/snippets/snippet-intro.mdx](/docs/snippets/snippet-intro.mdx) | MDX | 4 | 0 | 1 | 5 |
| [entrypoint-skyvern.sh](/entrypoint-skyvern.sh) | Shell Script | 11 | 4 | 6 | 21 |
| [entrypoint-streamlit.sh](/entrypoint-streamlit.sh) | Shell Script | 2 | 2 | 3 | 7 |
| [mypy.ini](/mypy.ini) | Ini | 9 | 0 | 2 | 11 |
| [poetry.lock](/poetry.lock) | toml | 6,649 | 0 | 589 | 7,238 |
| [pyproject.toml](/pyproject.toml) | toml | 100 | 0 | 8 | 108 |
| [run_alembic_check.sh](/run_alembic_check.sh) | Shell Script | 3 | 3 | 1 | 7 |
| [run_skyvern.sh](/run_skyvern.sh) | Shell Script | 9 | 1 | 3 | 13 |
| [run_ui.sh](/run_ui.sh) | Shell Script | 2 | 0 | 1 | 3 |
| [scripts/create_api_key.py](/scripts/create_api_key.py) | Python | 32 | 3 | 13 | 48 |
| [scripts/create_organization.py](/scripts/create_organization.py) | Python | 13 | 0 | 9 | 22 |
| [setup.sh](/setup.sh) | Shell Script | 210 | 36 | 35 | 281 |
| [skyvern-frontend/.prettierignore](/skyvern-frontend/.prettierignore) | Ignore | 5 | 0 | 0 | 5 |
| [skyvern-frontend/README.md](/skyvern-frontend/README.md) | Markdown | 43 | 0 | 23 | 66 |
| [skyvern-frontend/artifactServer.js](/skyvern-frontend/artifactServer.js) | JavaScript | 46 | 0 | 8 | 54 |
| [skyvern-frontend/components.json](/skyvern-frontend/components.json) | JSON | 17 | 0 | 1 | 18 |
| [skyvern-frontend/index.html](/skyvern-frontend/index.html) | HTML | 13 | 0 | 1 | 14 |
| [skyvern-frontend/localServer.js](/skyvern-frontend/localServer.js) | JavaScript | 20 | 2 | 4 | 26 |
| [skyvern-frontend/package-lock.json](/skyvern-frontend/package-lock.json) | JSON | 6,580 | 0 | 1 | 6,581 |
| [skyvern-frontend/package.json](/skyvern-frontend/package.json) | JSON | 87 | 0 | 1 | 88 |
| [skyvern-frontend/postcss.config.js](/skyvern-frontend/postcss.config.js) | JavaScript | 6 | 0 | 1 | 7 |
| [skyvern-frontend/src/App.tsx](/skyvern-frontend/src/App.tsx) | TypeScript JSX | 15 | 0 | 3 | 18 |
| [skyvern-frontend/src/api/AxiosClient.ts](/skyvern-frontend/src/api/AxiosClient.ts) | TypeScript | 42 | 0 | 10 | 52 |
| [skyvern-frontend/src/api/QueryClient.ts](/skyvern-frontend/src/api/QueryClient.ts) | TypeScript | 9 | 0 | 3 | 12 |
| [skyvern-frontend/src/api/types.ts](/skyvern-frontend/src/api/types.ts) | TypeScript | 94 | 0 | 10 | 104 |
| [skyvern-frontend/src/components/Logo.tsx](/skyvern-frontend/src/components/Logo.tsx) | TypeScript JSX | 5 | 0 | 2 | 7 |
| [skyvern-frontend/src/components/StatusBadge.tsx](/skyvern-frontend/src/components/StatusBadge.tsx) | TypeScript JSX | 17 | 0 | 5 | 22 |
| [skyvern-frontend/src/components/ThemeProvider.tsx](/skyvern-frontend/src/components/ThemeProvider.tsx) | TypeScript JSX | 37 | 0 | 9 | 46 |
| [skyvern-frontend/src/components/ThemeSwitch.tsx](/skyvern-frontend/src/components/ThemeSwitch.tsx) | TypeScript JSX | 35 | 0 | 5 | 40 |
| [skyvern-frontend/src/components/ZoomableImage.tsx](/skyvern-frontend/src/components/ZoomableImage.tsx) | TypeScript JSX | 13 | 0 | 4 | 17 |
| [skyvern-frontend/src/components/themeProviderContext.ts](/skyvern-frontend/src/components/themeProviderContext.ts) | TypeScript | 12 | 0 | 5 | 17 |
| [skyvern-frontend/src/components/ui/accordion.tsx](/skyvern-frontend/src/components/ui/accordion.tsx) | TypeScript JSX | 49 | 0 | 7 | 56 |
| [skyvern-frontend/src/components/ui/aspect-ratio.tsx](/skyvern-frontend/src/components/ui/aspect-ratio.tsx) | TypeScript JSX | 3 | 0 | 3 | 6 |
| [skyvern-frontend/src/components/ui/badge-variants.ts](/skyvern-frontend/src/components/ui/badge-variants.ts) | TypeScript | 25 | 0 | 3 | 28 |
| [skyvern-frontend/src/components/ui/badge.tsx](/skyvern-frontend/src/components/ui/badge.tsx) | TypeScript JSX | 13 | 0 | 5 | 18 |
| [skyvern-frontend/src/components/ui/button-variants.ts](/skyvern-frontend/src/components/ui/button-variants.ts) | TypeScript | 31 | 0 | 3 | 34 |
| [skyvern-frontend/src/components/ui/button.tsx](/skyvern-frontend/src/components/ui/button.tsx) | TypeScript JSX | 24 | 0 | 5 | 29 |
| [skyvern-frontend/src/components/ui/card.tsx](/skyvern-frontend/src/components/ui/card.tsx) | TypeScript JSX | 75 | 0 | 9 | 84 |
| [skyvern-frontend/src/components/ui/carousel.tsx](/skyvern-frontend/src/components/ui/carousel.tsx) | TypeScript JSX | 231 | 0 | 30 | 261 |
| [skyvern-frontend/src/components/ui/dialog.tsx](/skyvern-frontend/src/components/ui/dialog.tsx) | TypeScript JSX | 108 | 0 | 13 | 121 |
| [skyvern-frontend/src/components/ui/dropdown-menu.tsx](/skyvern-frontend/src/components/ui/dropdown-menu.tsx) | TypeScript JSX | 186 | 0 | 18 | 204 |
| [skyvern-frontend/src/components/ui/form.tsx](/skyvern-frontend/src/components/ui/form.tsx) | TypeScript JSX | 123 | 0 | 16 | 139 |
| [skyvern-frontend/src/components/ui/hidden-copyable-input.tsx](/skyvern-frontend/src/components/ui/hidden-copyable-input.tsx) | TypeScript JSX | 39 | 0 | 6 | 45 |
| [skyvern-frontend/src/components/ui/input.tsx](/skyvern-frontend/src/components/ui/input.tsx) | TypeScript JSX | 21 | 0 | 5 | 26 |
| [skyvern-frontend/src/components/ui/label.tsx](/skyvern-frontend/src/components/ui/label.tsx) | TypeScript JSX | 20 | 0 | 5 | 25 |
| [skyvern-frontend/src/components/ui/pagination.tsx](/skyvern-frontend/src/components/ui/pagination.tsx) | TypeScript JSX | 112 | 0 | 11 | 123 |
| [skyvern-frontend/src/components/ui/radio-group.tsx](/skyvern-frontend/src/components/ui/radio-group.tsx) | TypeScript JSX | 38 | 0 | 5 | 43 |
| [skyvern-frontend/src/components/ui/select.tsx](/skyvern-frontend/src/components/ui/select.tsx) | TypeScript JSX | 150 | 0 | 13 | 163 |
| [skyvern-frontend/src/components/ui/separator.tsx](/skyvern-frontend/src/components/ui/separator.tsx) | TypeScript JSX | 26 | 0 | 4 | 30 |
| [skyvern-frontend/src/components/ui/skeleton.tsx](/skyvern-frontend/src/components/ui/skeleton.tsx) | TypeScript JSX | 13 | 0 | 3 | 16 |
| [skyvern-frontend/src/components/ui/table.tsx](/skyvern-frontend/src/components/ui/table.tsx) | TypeScript JSX | 110 | 0 | 11 | 121 |
| [skyvern-frontend/src/components/ui/tabs.tsx](/skyvern-frontend/src/components/ui/tabs.tsx) | TypeScript JSX | 47 | 0 | 7 | 54 |
| [skyvern-frontend/src/components/ui/textarea.tsx](/skyvern-frontend/src/components/ui/textarea.tsx) | TypeScript JSX | 20 | 0 | 5 | 25 |
| [skyvern-frontend/src/components/ui/toast.tsx](/skyvern-frontend/src/components/ui/toast.tsx) | TypeScript JSX | 115 | 0 | 13 | 128 |
| [skyvern-frontend/src/components/ui/toaster.tsx](/skyvern-frontend/src/components/ui/toaster.tsx) | TypeScript JSX | 31 | 0 | 3 | 34 |
| [skyvern-frontend/src/components/ui/tooltip.tsx](/skyvern-frontend/src/components/ui/tooltip.tsx) | TypeScript JSX | 22 | 0 | 7 | 29 |
| [skyvern-frontend/src/components/ui/use-form-field.ts](/skyvern-frontend/src/components/ui/use-form-field.ts) | TypeScript | 36 | 0 | 11 | 47 |
| [skyvern-frontend/src/components/ui/use-toast.ts](/skyvern-frontend/src/components/ui/use-toast.ts) | TypeScript | 156 | 3 | 31 | 190 |
| [skyvern-frontend/src/components/useTheme.ts](/skyvern-frontend/src/components/useTheme.ts) | TypeScript | 8 | 0 | 4 | 12 |
| [skyvern-frontend/src/components/useThemeAsDarkOrLight.ts](/skyvern-frontend/src/components/useThemeAsDarkOrLight.ts) | TypeScript | 11 | 0 | 5 | 16 |
| [skyvern-frontend/src/hooks/useApiCredential.ts](/skyvern-frontend/src/hooks/useApiCredential.ts) | TypeScript | 33 | 0 | 7 | 40 |
| [skyvern-frontend/src/hooks/useCredentialGetter.ts](/skyvern-frontend/src/hooks/useCredentialGetter.ts) | TypeScript | 7 | 0 | 3 | 10 |
| [skyvern-frontend/src/index.css](/skyvern-frontend/src/index.css) | CSS | 157 | 0 | 23 | 180 |
| [skyvern-frontend/src/main.tsx](/skyvern-frontend/src/main.tsx) | TypeScript JSX | 9 | 0 | 2 | 11 |
| [skyvern-frontend/src/router.tsx](/skyvern-frontend/src/router.tsx) | TypeScript JSX | 49 | 0 | 3 | 52 |
| [skyvern-frontend/src/routes/root/Profile.tsx](/skyvern-frontend/src/routes/root/Profile.tsx) | TypeScript JSX | 21 | 0 | 4 | 25 |
| [skyvern-frontend/src/routes/root/RootLayout.tsx](/skyvern-frontend/src/routes/root/RootLayout.tsx) | TypeScript JSX | 55 | 0 | 4 | 59 |
| [skyvern-frontend/src/routes/root/SideNav.tsx](/skyvern-frontend/src/routes/root/SideNav.tsx) | TypeScript JSX | 56 | 0 | 3 | 59 |
| [skyvern-frontend/src/routes/settings/Settings.tsx](/skyvern-frontend/src/routes/settings/Settings.tsx) | TypeScript JSX | 59 | 0 | 4 | 63 |
| [skyvern-frontend/src/routes/settings/SettingsPageLayout.tsx](/skyvern-frontend/src/routes/settings/SettingsPageLayout.tsx) | TypeScript JSX | 11 | 0 | 3 | 14 |
| [skyvern-frontend/src/routes/tasks/TasksPageLayout.tsx](/skyvern-frontend/src/routes/tasks/TasksPageLayout.tsx) | TypeScript JSX | 11 | 0 | 3 | 14 |
| [skyvern-frontend/src/routes/tasks/constants.ts](/skyvern-frontend/src/routes/tasks/constants.ts) | TypeScript | 1 | 0 | 1 | 2 |
| [skyvern-frontend/src/routes/tasks/create/CreateNewTask.tsx](/skyvern-frontend/src/routes/tasks/create/CreateNewTask.tsx) | TypeScript JSX | 64 | 0 | 4 | 68 |
| [skyvern-frontend/src/routes/tasks/create/CreateNewTaskForm.tsx](/skyvern-frontend/src/routes/tasks/create/CreateNewTaskForm.tsx) | TypeScript JSX | 316 | 0 | 11 | 327 |
| [skyvern-frontend/src/routes/tasks/data/descriptionHelperContent.ts](/skyvern-frontend/src/routes/tasks/data/descriptionHelperContent.ts) | TypeScript | 12 | 0 | 6 | 18 |
| [skyvern-frontend/src/routes/tasks/data/sampleTaskData.ts](/skyvern-frontend/src/routes/tasks/data/sampleTaskData.ts) | TypeScript | 277 | 0 | 6 | 283 |
| [skyvern-frontend/src/routes/tasks/detail/JSONArtifact.tsx](/skyvern-frontend/src/routes/tasks/detail/JSONArtifact.tsx) | TypeScript JSX | 42 | 0 | 6 | 48 |
| [skyvern-frontend/src/routes/tasks/detail/StepArtifacts.tsx](/skyvern-frontend/src/routes/tasks/detail/StepArtifacts.tsx) | TypeScript JSX | 165 | 0 | 12 | 177 |
| [skyvern-frontend/src/routes/tasks/detail/StepArtifactsLayout.tsx](/skyvern-frontend/src/routes/tasks/detail/StepArtifactsLayout.tsx) | TypeScript JSX | 49 | 0 | 8 | 57 |
| [skyvern-frontend/src/routes/tasks/detail/StepInfo.tsx](/skyvern-frontend/src/routes/tasks/detail/StepInfo.tsx) | TypeScript JSX | 39 | 0 | 4 | 43 |
| [skyvern-frontend/src/routes/tasks/detail/StepNavigation.tsx](/skyvern-frontend/src/routes/tasks/detail/StepNavigation.tsx) | TypeScript JSX | 76 | 0 | 8 | 84 |
| [skyvern-frontend/src/routes/tasks/detail/TaskDetails.tsx](/skyvern-frontend/src/routes/tasks/detail/TaskDetails.tsx) | TypeScript JSX | 197 | 0 | 6 | 203 |
| [skyvern-frontend/src/routes/tasks/detail/TextArtifact.tsx](/skyvern-frontend/src/routes/tasks/detail/TextArtifact.tsx) | TypeScript JSX | 40 | 0 | 6 | 46 |
| [skyvern-frontend/src/routes/tasks/detail/artifactUtils.ts](/skyvern-frontend/src/routes/tasks/detail/artifactUtils.ts) | TypeScript | 28 | 0 | 4 | 32 |
| [skyvern-frontend/src/routes/tasks/list/TaskList.tsx](/skyvern-frontend/src/routes/tasks/list/TaskList.tsx) | TypeScript JSX | 180 | 0 | 7 | 187 |
| [skyvern-frontend/src/routes/tasks/list/TaskListSkeleton.tsx](/skyvern-frontend/src/routes/tasks/list/TaskListSkeleton.tsx) | TypeScript JSX | 43 | 0 | 4 | 47 |
| [skyvern-frontend/src/routes/tasks/running/LatestScreenshot.tsx](/skyvern-frontend/src/routes/tasks/running/LatestScreenshot.tsx) | TypeScript JSX | 68 | 0 | 17 | 85 |
| [skyvern-frontend/src/routes/tasks/running/QueuedTasks.tsx](/skyvern-frontend/src/routes/tasks/running/QueuedTasks.tsx) | TypeScript JSX | 74 | 0 | 6 | 80 |
| [skyvern-frontend/src/routes/tasks/running/RunningTaskSkeleton.tsx](/skyvern-frontend/src/routes/tasks/running/RunningTaskSkeleton.tsx) | TypeScript JSX | 80 | 1 | 3 | 84 |
| [skyvern-frontend/src/routes/tasks/running/RunningTasks.tsx](/skyvern-frontend/src/routes/tasks/running/RunningTasks.tsx) | TypeScript JSX | 61 | 0 | 6 | 67 |
| [skyvern-frontend/src/routes/tasks/types.ts](/skyvern-frontend/src/routes/tasks/types.ts) | TypeScript | 5 | 0 | 1 | 6 |
| [skyvern-frontend/src/store/CredentialGetterContext.ts](/skyvern-frontend/src/store/CredentialGetterContext.ts) | TypeScript | 4 | 0 | 3 | 7 |
| [skyvern-frontend/src/store/SettingsStore.ts](/skyvern-frontend/src/store/SettingsStore.ts) | TypeScript | 16 | 0 | 4 | 20 |
| [skyvern-frontend/src/store/UserContext.ts](/skyvern-frontend/src/store/UserContext.ts) | TypeScript | 4 | 0 | 3 | 7 |
| [skyvern-frontend/src/util/env.ts](/skyvern-frontend/src/util/env.ts) | TypeScript | 15 | 0 | 8 | 23 |
| [skyvern-frontend/src/util/timeFormat.ts](/skyvern-frontend/src/util/timeFormat.ts) | TypeScript | 12 | 0 | 2 | 14 |
| [skyvern-frontend/src/util/utils.ts](/skyvern-frontend/src/util/utils.ts) | TypeScript | 5 | 0 | 2 | 7 |
| [skyvern-frontend/src/vite-env.d.ts](/skyvern-frontend/src/vite-env.d.ts) | TypeScript | 0 | 1 | 1 | 2 |
| [skyvern-frontend/tailwind.config.js](/skyvern-frontend/tailwind.config.js) | JavaScript | 76 | 1 | 1 | 78 |
| [skyvern-frontend/tsconfig.json](/skyvern-frontend/tsconfig.json) | JSON with Comments | 26 | 3 | 4 | 33 |
| [skyvern-frontend/tsconfig.node.json](/skyvern-frontend/tsconfig.node.json) | JSON | 11 | 0 | 1 | 12 |
| [skyvern-frontend/vite.config.ts](/skyvern-frontend/vite.config.ts) | TypeScript | 17 | 1 | 2 | 20 |
| [skyvern/__init__.py](/skyvern/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/analytics.py](/skyvern/analytics.py) | Python | 51 | 4 | 17 | 72 |
| [skyvern/config.py](/skyvern/config.py) | Python | 67 | 17 | 20 | 104 |
| [skyvern/constants.py](/skyvern/constants.py) | Python | 4 | 1 | 2 | 7 |
| [skyvern/exceptions.py](/skyvern/exceptions.py) | Python | 144 | 0 | 81 | 225 |
| [skyvern/forge/__init__.py](/skyvern/forge/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/forge/__main__.py](/skyvern/forge/__main__.py) | Python | 15 | 0 | 6 | 21 |
| [skyvern/forge/agent.py](/skyvern/forge/agent.py) | Python | 1,071 | 50 | 77 | 1,198 |
| [skyvern/forge/api_app.py](/skyvern/forge/api_app.py) | Python | 80 | 6 | 24 | 110 |
| [skyvern/forge/app.py](/skyvern/forge/app.py) | Python | 42 | 0 | 6 | 48 |
| [skyvern/forge/async_operations.py](/skyvern/forge/async_operations.py) | Python | 99 | 7 | 30 | 136 |
| [skyvern/forge/prompts.py](/skyvern/forge/prompts.py) | Python | 2 | 1 | 2 | 5 |
| [skyvern/forge/prompts/skyvern/extract-action-claude3-sonnet.j2](/skyvern/forge/prompts/skyvern/extract-action-claude3-sonnet.j2) | Jinja | 66 | 0 | 11 | 77 |
| [skyvern/forge/prompts/skyvern/extract-action.j2](/skyvern/forge/prompts/skyvern/extract-action.j2) | Jinja | 67 | 0 | 12 | 79 |
| [skyvern/forge/prompts/skyvern/extract-information.j2](/skyvern/forge/prompts/skyvern/extract-information.j2) | Jinja | 17 | 0 | 10 | 27 |
| [skyvern/forge/sdk/__init__.py](/skyvern/forge/sdk/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/forge/sdk/api/__init__.py](/skyvern/forge/sdk/api/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/forge/sdk/api/aws.py](/skyvern/forge/sdk/api/aws.py) | Python | 113 | 1 | 25 | 139 |
| [skyvern/forge/sdk/api/files.py](/skyvern/forge/sdk/api/files.py) | Python | 50 | 5 | 16 | 71 |
| [skyvern/forge/sdk/api/llm/__init__.py](/skyvern/forge/sdk/api/llm/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/forge/sdk/api/llm/api_handler_factory.py](/skyvern/forge/sdk/api/llm/api_handler_factory.py) | Python | 197 | 4 | 24 | 225 |
| [skyvern/forge/sdk/api/llm/config_registry.py](/skyvern/forge/sdk/api/llm/config_registry.py) | Python | 112 | 2 | 19 | 133 |
| [skyvern/forge/sdk/api/llm/exceptions.py](/skyvern/forge/sdk/api/llm/exceptions.py) | Python | 30 | 0 | 19 | 49 |
| [skyvern/forge/sdk/api/llm/models.py](/skyvern/forge/sdk/api/llm/models.py) | Python | 50 | 2 | 12 | 64 |
| [skyvern/forge/sdk/api/llm/utils.py](/skyvern/forge/sdk/api/llm/utils.py) | Python | 54 | 2 | 12 | 68 |
| [skyvern/forge/sdk/artifact/__init__.py](/skyvern/forge/sdk/artifact/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/forge/sdk/artifact/manager.py](/skyvern/forge/sdk/artifact/manager.py) | Python | 85 | 15 | 16 | 116 |
| [skyvern/forge/sdk/artifact/models.py](/skyvern/forge/sdk/artifact/models.py) | Python | 62 | 5 | 13 | 80 |
| [skyvern/forge/sdk/artifact/storage/__init__.py](/skyvern/forge/sdk/artifact/storage/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/forge/sdk/artifact/storage/base.py](/skyvern/forge/sdk/artifact/storage/base.py) | Python | 39 | 1 | 10 | 50 |
| [skyvern/forge/sdk/artifact/storage/factory.py](/skyvern/forge/sdk/artifact/storage/factory.py) | Python | 10 | 0 | 5 | 15 |
| [skyvern/forge/sdk/artifact/storage/local.py](/skyvern/forge/sdk/artifact/storage/local.py) | Python | 56 | 0 | 14 | 70 |
| [skyvern/forge/sdk/core/__init__.py](/skyvern/forge/sdk/core/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/forge/sdk/core/security.py](/skyvern/forge/sdk/core/security.py) | Python | 35 | 0 | 9 | 44 |
| [skyvern/forge/sdk/core/skyvern_context.py](/skyvern/forge/sdk/core/skyvern_context.py) | Python | 53 | 0 | 21 | 74 |
| [skyvern/forge/sdk/db/__init__.py](/skyvern/forge/sdk/db/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/forge/sdk/db/client.py](/skyvern/forge/sdk/db/client.py) | Python | 1,042 | 2 | 60 | 1,104 |
| [skyvern/forge/sdk/db/enums.py](/skyvern/forge/sdk/db/enums.py) | Python | 10 | 1 | 5 | 16 |
| [skyvern/forge/sdk/db/exceptions.py](/skyvern/forge/sdk/db/exceptions.py) | Python | 2 | 0 | 1 | 3 |
| [skyvern/forge/sdk/db/id.py](/skyvern/forge/sdk/db/id.py) | Python | 102 | 4 | 49 | 155 |
| [skyvern/forge/sdk/db/models.py](/skyvern/forge/sdk/db/models.py) | Python | 198 | 1 | 49 | 248 |
| [skyvern/forge/sdk/db/utils.py](/skyvern/forge/sdk/db/utils.py) | Python | 258 | 0 | 42 | 300 |
| [skyvern/forge/sdk/executor/__init__.py](/skyvern/forge/sdk/executor/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/forge/sdk/executor/async_executor.py](/skyvern/forge/sdk/executor/async_executor.py) | Python | 85 | 0 | 15 | 100 |
| [skyvern/forge/sdk/executor/factory.py](/skyvern/forge/sdk/executor/factory.py) | Python | 9 | 0 | 5 | 14 |
| [skyvern/forge/sdk/experimentation/__init__.py](/skyvern/forge/sdk/experimentation/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/forge/sdk/experimentation/providers.py](/skyvern/forge/sdk/experimentation/providers.py) | Python | 17 | 1 | 9 | 27 |
| [skyvern/forge/sdk/forge_log.py](/skyvern/forge/sdk/forge_log.py) | Python | 70 | 7 | 14 | 91 |
| [skyvern/forge/sdk/models.py](/skyvern/forge/sdk/models.py) | Python | 101 | 4 | 35 | 140 |
| [skyvern/forge/sdk/prompting.py](/skyvern/forge/sdk/prompting.py) | Python | 92 | 1 | 27 | 120 |
| [skyvern/forge/sdk/routes/__init__.py](/skyvern/forge/sdk/routes/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/forge/sdk/routes/agent_protocol.py](/skyvern/forge/sdk/routes/agent_protocol.py) | Python | 477 | 6 | 52 | 535 |
| [skyvern/forge/sdk/schemas/__init__.py](/skyvern/forge/sdk/schemas/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/forge/sdk/schemas/tasks.py](/skyvern/forge/sdk/schemas/tasks.py) | Python | 199 | 1 | 31 | 231 |
| [skyvern/forge/sdk/services/__init__.py](/skyvern/forge/sdk/services/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/forge/sdk/services/bitwarden.py](/skyvern/forge/sdk/services/bitwarden.py) | Python | 94 | 12 | 25 | 131 |
| [skyvern/forge/sdk/services/org_auth_service.py](/skyvern/forge/sdk/services/org_auth_service.py) | Python | 100 | 2 | 18 | 120 |
| [skyvern/forge/sdk/services/org_auth_token_service.py](/skyvern/forge/sdk/services/org_auth_token_service.py) | Python | 28 | 3 | 9 | 40 |
| [skyvern/forge/sdk/settings_manager.py](/skyvern/forge/sdk/settings_manager.py) | Python | 10 | 0 | 5 | 15 |
| [skyvern/forge/sdk/workflow/__init__.py](/skyvern/forge/sdk/workflow/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/forge/sdk/workflow/context_manager.py](/skyvern/forge/sdk/workflow/context_manager.py) | Python | 273 | 19 | 44 | 336 |
| [skyvern/forge/sdk/workflow/exceptions.py](/skyvern/forge/sdk/workflow/exceptions.py) | Python | 31 | 0 | 13 | 44 |
| [skyvern/forge/sdk/workflow/models/__init__.py](/skyvern/forge/sdk/workflow/models/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/forge/sdk/workflow/models/block.py](/skyvern/forge/sdk/workflow/models/block.py) | Python | 765 | 50 | 118 | 933 |
| [skyvern/forge/sdk/workflow/models/parameter.py](/skyvern/forge/sdk/workflow/models/parameter.py) | Python | 83 | 6 | 31 | 120 |
| [skyvern/forge/sdk/workflow/models/workflow.py](/skyvern/forge/sdk/workflow/models/workflow.py) | Python | 74 | 0 | 25 | 99 |
| [skyvern/forge/sdk/workflow/models/yaml.py](/skyvern/forge/sdk/workflow/models/yaml.py) | Python | 99 | 46 | 46 | 191 |
| [skyvern/forge/sdk/workflow/service.py](/skyvern/forge/sdk/workflow/service.py) | Python | 764 | 23 | 67 | 854 |
| [skyvern/scheduler.py](/skyvern/scheduler.py) | Python | 2 | 0 | 2 | 4 |
| [skyvern/webeye/README.md](/skyvern/webeye/README.md) | Markdown | 34 | 0 | 17 | 51 |
| [skyvern/webeye/__init__.py](/skyvern/webeye/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/webeye/actions/__init__.py](/skyvern/webeye/actions/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/webeye/actions/actions.py](/skyvern/webeye/actions/actions.py) | Python | 175 | 14 | 55 | 244 |
| [skyvern/webeye/actions/handler.py](/skyvern/webeye/actions/handler.py) | Python | 661 | 42 | 108 | 811 |
| [skyvern/webeye/actions/models.py](/skyvern/webeye/actions/models.py) | Python | 50 | 2 | 17 | 69 |
| [skyvern/webeye/actions/responses.py](/skyvern/webeye/actions/responses.py) | Python | 71 | 3 | 13 | 87 |
| [skyvern/webeye/browser_factory.py](/skyvern/webeye/browser_factory.py) | Python | 225 | 1 | 36 | 262 |
| [skyvern/webeye/browser_manager.py](/skyvern/webeye/browser_manager.py) | Python | 142 | 6 | 26 | 174 |
| [skyvern/webeye/scraper/__init__.py](/skyvern/webeye/scraper/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [skyvern/webeye/scraper/domUtils.js](/skyvern/webeye/scraper/domUtils.js) | JavaScript | 983 | 109 | 111 | 1,203 |
| [skyvern/webeye/scraper/scraper.py](/skyvern/webeye/scraper/scraper.py) | Python | 345 | 35 | 68 | 448 |
| [skyvern/webeye/string_util.py](/skyvern/webeye/string_util.py) | Python | 3 | 0 | 3 | 6 |
| [streamlit_app/visualizer/__init__.py](/streamlit_app/visualizer/__init__.py) | Python | 0 | 0 | 1 | 1 |
| [streamlit_app/visualizer/api.py](/streamlit_app/visualizer/api.py) | Python | 79 | 0 | 20 | 99 |
| [streamlit_app/visualizer/artifact_loader.py](/streamlit_app/visualizer/artifact_loader.py) | Python | 54 | 3 | 13 | 70 |
| [streamlit_app/visualizer/repository.py](/streamlit_app/visualizer/repository.py) | Python | 22 | 0 | 9 | 31 |
| [streamlit_app/visualizer/sample_data.py](/streamlit_app/visualizer/sample_data.py) | Python | 217 | 0 | 12 | 229 |
| [streamlit_app/visualizer/streamlit.py](/streamlit_app/visualizer/streamlit.py) | Python | 393 | 19 | 52 | 464 |
| [streamlit_app/visualizer/styles.py](/streamlit_app/visualizer/styles.py) | Python | 33 | 0 | 6 | 39 |

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)