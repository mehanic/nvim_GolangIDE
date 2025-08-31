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
-- local fmt = require("luasnip.extras.fmt").fmt
-- local rep = require("luasnip.extras").rep

-- return {
--    s("v.podman-login", fmt([[
-- - name: {}
--   containers.podman.podman_login:
--     username: {}
--     password: "{}"
--     registry: {}
--   ]], {
--     i(1, "Description"),
--     i(2, "user_name"),
--     i(3, "registry_password"),
--     i(4, "container_registry"),
--   })),

--   s("v.podman-container", fmt([[
-- - name: {}
--   containers.podman.podman_container:
--     name: {}
--     image: {}
--     authfile: "{}"
--     state: {}
--     volume:
--       - {}
--     generate_systemd:
--       path: "{}"
--       names: "{}"
--       new: {}
--       restart_policy: {}
--       time: {}
--   ]], {
--     i(1, "Description"),
--     i(2, "container_name"),
--     i(3, "container_image"),
--     i(4, "${XDG_RUNTIME_DIR}/containers/auth.json"),
--     c(5, { t("started"), t("stopped"), t("paused") }), -- state choices
--     i(6, "podman_container_volume"),
--     i(7, "/path/to/unit/file"),
--     i(8, "/path/to/unit/file"),
--     c(9, { t("true"), t("false") }),                  -- new choices (boolean)
--     c(10, { t("always"), t("on-failure"), t("no") }), -- restart_policy choices
--     i(11, "stop_timeout"),
--   })),

--   s("v.podman-image", fmt([[
-- - name: {}
--   containers.podman.podman_image:
--     name: {}
--     state: {}
--   ]], {
--     i(1, "Description"),
--     i(2, "image_name"),
--     c(3, { t("present"), t("absent"), t("latest") }),  -- state choices
--   })),
--  s("v.podman-image-build", fmt([[
-- - name: {}
--   containers.podman.podman_image:
--     name: {}
--     path: "{}"
--     build:
--       format: {}
--   ]], {
--     i(1, "Description"),
--     i(2, "image_name"),
--     i(3, "/path/to/build/dir"),
--     c(4, { t("docker"), t("oci"), t("tar") }),
--   })),

--  s("v.podman-containers", fmt([[
-- - name: {}
--   podman_containers:
--     containers:
--       - name: {}
--         image: {}
--         command: {}
--       - name: {}
--         image: {}
--         command: {}
--       - name: {}
--         image: {}
--         command: {}
--   ]], {
--     i(1, "Description"),
--     i(2, "container_name_1"),
--     i(3, "image_name_1"),
--     i(4, "commands_1"),
--     i(5, "container_name_2"),
--     i(6, "image_name_2"),
--     i(7, "commands_2"),
--     i(8, "container_name_3"),
--     i(9, "image_name_3"),
--     i(10, "commands_3"),
--   })),

--     s("v.postgresql-db", fmt([[
-- - name: {}
--   community.postgresql.postgresql_db:
--     name: "{}"
--     owner: "{}"
--     template: "{}"
--     encoding: "{}"
--   ]], {
--     i(1, "Description"),
--     i(2, "database_name"),
--     i(3, "owner_name"),
--     i(4, "template_name"),
--     i(5, "UTF8"),
--   })),

--   s("v.postgresql-user", fmt([[
-- - name: {}
--   community.postgresql.postgresql_user:
--     name: "{}"
--     state: "{}"
--     role_attr_flags: "{}"
--   ]], {
--     i(1, "Description"),
--     i(2, "user_name"),
--     i(3, "present"),
--     i(4, "CREATEDB"),
--   })),

--    s("v.alternatives", fmt([[
-- - name: {}
--   community.general.alternatives:
--     name: "{}"
--     path: "{}"
--     link: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "generic_link_name"),
--     i(3, "path_to_real_executable"),
--     i(4, "path_to_symlink_for_real_executable"),
--   })),

--   s("v.archive", fmt([[
-- - name: {}
--   community.general.archive:
--     dest: "{}"
--     force_archive: {}
--     format: {}
--     owner: "{}"
--     group: "{}"
--     mode: "{}"
--     path:
--       - {}
--     {}
-- ]], {
--   i(1, "Description"),
--   i(2, "path_to_save_archive_to"),
--   c(3, { t("true"), t("false") }),        -- choice node for force_archive
--   c(4, { t("zip"), t("tar"), t("gz"), t("bz2") }),  -- common archive formats
--   i(5, "owner"),
--   i(6, "group"),
--   i(7, "0700"),
--   i(8, "file_or_dir_to_archive"),
--   t("- path_to_exclude"),                 -- static exclude path line, or consider making this optional
-- })),

--  s("v.discord", fmt([[
-- - name: {}
--   community.general.discord:
--     webhook_id: {{ lookup('env', 'DISCORD_ID') }}
--     webhook_token: {{ lookup('env', 'DISCORD_TOKEN') }}
--     content: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "my_message_to_discord"),
--   })),

--   s("v.django-manage", fmt([[
-- - name: {}
--   community.general.django_manage:
--     command: {}
--     project_path: "{}"
--     virtualenv: "{}"
--     database: "{}"
-- ]], {
--     i(1, "Description"),
--     c(2, { t("cleanup"), t("migrate"), t("collectstatic"), t("runserver") }),
--     i(3, "project_dir"),
--     i(4, "virtenv_path"),
--     i(5, "db_name"),
-- })),

--   s("v.modprobe", fmt([[
-- - name: {}
--   community.general.modprobe:
--     name: "{}"
--     state: {}
--     params: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "kernel_module"),
--     c(3, { t("present"), t("absent") }),
--     i(4, "module_params"),
-- })),


--  s("v.snap", fmt([[
-- - name: {}
--   community.general.snap:
--     name: "{}"
--     state: {}
--     classic: {}
--     channel: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "snap_to_add"),
--     c(3, { t("present"), t("absent") }),
--     c(4, { t("true"), t("false") }),
--     i(5, "release_version"),
-- })),

--   s("v.timezone", fmt([[
-- - name: {}
--   community.general.timezone:
--     name: {}
-- ]], {
--     i(1, "Description"),
--     i(2, "America/New_York"),
--   })),

-- s("v.zypper", fmt([[
-- - name: {}
--   community.general.zypper:
--     name:
--       - {}
--     state: {}
--     disable_gpg_check: {}
--     update_cache: {}
--     validate_certs: {}
-- ]], {
--     i(1, "Description"),
--     i(2, "package_name"),
--     c(3, { t("present"), t("absent"), t("latest") }),
--     c(4, { t("true"), t("false") }),
--     c(5, { t("true"), t("false") }),
--     c(6, { t("true"), t("false") }),
-- })),


--  s("v.zypper-repository", fmt([[
-- - name: Add Repository for {}
--   community.general.zypper_repository:
--     name: {}
--     description: {}
--     repo: {}
--     state: {}
--     enabled: {}
--     autorefresh: {}
--     auto_import_keys: {}
-- ]], {
--     i(1, "RepoName"),
--     i(2, "RepoName"),
--     i(3, "Description"),
--     i(4, "RepoUrl"),
--     i(5, "present"),
--     i(6, "true"),
--     i(7, "true"),
--     i(8, "true"),
--   })),


-- s("v.ansible-posix-mount", {
--   t("- name: "), i(1, "Description"),
--   t({"", "  ansible.posix.mount:"}),
--   t({"", "    fstype: \""}), i(2, "file_system_type"), t("\""),
--   t({"", "    opts: \""}), i(3, "file_system_options"), t("\""),
--   t({"", "    path: \""}), i(4, "file_system_path"), t("\""),
--   t({"", "    src: \""}), i(5, "file_system_source"), t("\""),
--   t({"", "    state: \""}), i(6, "present"), t({",absent,mounted,unmounted,remounted|\""}),
--   t({""}),
--   i(0)
-- }),


--   s("v.add-host", fmt([[
-- - name: {}
--   ansible.builtin.add_host:
--     hostname: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "host_or_ip_to_add"),
--   })),



--   s("v.apt-packages", fmt([[
-- - name: {}
--   ansible.builtin.apt:
--     name:
--       - {}
--     state: {}
--     update_cache: {}
--   register: apt_status
--   until: apt_status is success
--   delay: 6
--   retries: 10
-- ]], {
--     i(1, "Description"),
--     i(2, "package_name"),
--     i(3, "present"),
--     i(4, "true"),
--   })),

 
 
--  s("v.apt-fullupdate", fmt([[
-- - name: Update all packages to latest version
--   ansible.builtin.apt:
--     name: "*"
--     state: "latest"
-- ]], {})),

--  s("v.apt-installdeb", fmt([[
-- - name: Install package from {}
--   ansible.builtin.apt:
--     deb: "{}/{}"
-- ]], {
--     i(1, "debfile"),
--     i(2, "debpath"),
--     rep(1),
-- })),


--   s("v.apt-key-fromfile", fmt([[
-- - name: {}
--   ansible.builtin.apt_key:
--     data: "{{{{ lookup('file', '{}') }}}}"
--     state: {}{}
--     keyring: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "file_path_on_server"),
--     i(3, "present"),
--     t(""),
--     i(5, "path_to_keyring_file"),
-- })),

--   s("v.apt-key_fromserver", fmt([[
-- - name: {}
--   ansible.builtin.apt_key:
--     url: "{}"
--     state: {}
--     keyring: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "url_of_key"),
--     i(3, "present"),
--     i(4, "path_to_keyring_file"),
-- })),


--  s("v.apt-repository", fmt([[
-- - name: {}
--   ansible.builtin.apt_repository:
--     repo: "{}"
--     state: {}
--     update_cache: {}
--     validate_certs: {}
-- ]], {
--     i(1, "Description"),
--     i(2, "repo_source_string"),
--     i(3, "present"),
--     i(4, "true"),
--     i(5, "true"),
-- })),



--  s("v.assert", fmt([[
-- - name: {}
--   ansible.builtin.assert:
--     that:
--       - {}
--     fail_msg: "{}"
--     success_msg: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "condition_that_must_be_true"),
--     i(3, "msg_to_print_on_failure"),
--     i(4, "msg_to_print_on_success"),
-- })),

--   s("v.async-status", fmt([[
-- - name: {}
--   ansible.builtin.async_status:
--     jid: '{{ {}.ansible_job_id }}'
--   register: job_result
--   until: job_result.finished
--   retries: 100
--   delay: 10
-- ]], {
--     i(1, "Description"),
--     i(2, "variable_of_async_task"),
--   })),



--  s("v.copy", fmt([[
-- - name: {}
--   ansible.builtin.copy:
--     src: "{}"
--     dest: "{}"
--     remote_src: {}
--     force: {}
--     owner: "{}"
--     group: "{}"
--     mode: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "src_path"),
--     i(3, "dest_path"),
--     i(4, "false"),
--     i(5, "true"),
--     i(6, "owner"),
--     i(7, "group"),
--     i(8, "0700"),
-- })),


--  s("v.copy-content", fmt([[
-- - name: {}
--   ansible.builtin.copy:
--     content: "{}"
--     dest: "{}"
--     force: {}{}
--     owner: "{}"{} 
--     group: "{}"{} 
--     mode: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "content_to_copy"),
--     i(3, "destination_path"),
--     c(4, { t("true"), t("false") }),
--     t(""),
--     i(7, "owner"),
--     t(""),
--     rep(7),
--     t(""),
--     i(11, "0700"),
-- })),

-- s("v.debug", fmt([[
-- - name: {}
--   ansible.builtin.debug:
--     msg: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "message"),
--   })),

--   s("v.debug-var", fmt([[
-- - name: Print the value of the variable {}
--   ansible.builtin.debug:
--     msg: "{}: {{ {{ {} }} }}"
-- ]], {
--     i(1, "variable_name"),
--     rep(1),
--     rep(1),
--   })),


--   s("v.dpkg-selections", fmt([[
-- - name: {}
--   ansible.builtin.dpkg_selections:
--     name: "{}"
--     selection: {}
-- ]], {
--     i(1, "Description"),
--     i(2, "package_to_configure"),
--     c(3, { t("install"), t("hold"), t("deinstall"), t("purge") }),
--   })),


--    s("v.expect", fmt([[
-- - name: {}
--   ansible.builtin.expect:
--     command: "{}"{}{}{}
--     responses:
--       (?i){}:{}
-- ]], {
--     i(1, "Description"),
--     i(2, "command_to_run"),
--     c(3, { t(""), fmt("\n    chdir: \"{}\"", { i(4, "directory") }) }),
--     c(5, { t(""), fmt("\n    creates: \"{}\"", { i(6, "file_if_present_dont_run") }) }),
--     c(7, { t(""), fmt("\n    removes: \"{}\"", { i(8, "file_if_present_do_run") }) }),
--     i(9, "question_to_answer"),
--     i(10, "answer_to_question"),
--   })),

--   s("v.fail", fmt([[
-- - name: {}
--   ansible.builtin.fail:{} 
-- ]], {
--     i(1, "Description"),
--     c(2, {
--       t(""),
--       fmt("\n    msg: \"{}\"", { i(3, "failure_message") }),
--     }),
--   })),


--    s("v.fetch", fmt([[
-- - name: {}
--   ansible.builtin.fetch:
--     src: "{}"
--     dest: "{}"{}{}{}
-- ]], {
--     i(1, "Description"),
--     i(2, "path_on_remote_system"),
--     i(3, "path_on_control_node"),
--     c(4, { t(""), fmt("\n    fail_on_missing: {}", { c(1, { t("false"), t("true") }) }) }),
--     c(5, { t(""), fmt("\n    flat: {}", { c(1, { t("false"), t("true") }) }) }),
--     c(6, { t(""), fmt("\n    validate_checksum: {}", { c(1, { t("false"), t("true") }) }) }),
--   })),


--  s("v.file_mkdir", fmt([[
-- - name: {}
--   ansible.builtin.file:
--     path: {}
--     state: directory
--     mode: '{}'
-- ]], {
--     i(1, "Description"),
--     i(2, "path"),
--     i(3, "0755"),
--   })),

--   s("v.file-chown", fmt([[
-- - name: {}
--   ansible.builtin.file:
--     path: {}
--     state: directory
--     recurse: {}
--     owner: '{}'
--     group: '{}'
-- ]], {
--     i(1, "Description"),
--     i(2, "path"),
--     c(3, { t("true"), t("false") }),
--     i(4, "owner"),
--     i(5, "group"),
--   })),


--   s("v.file-link", fmt([[
-- - name: Make Symbolic Link between {} and {}
--   ansible.builtin.file:
--     src: {}
--     dest: {}
--     owner: {}
--     group: {}
--     state: link
-- ]], {
--     i(1, "path"),
--     i(2, "directory"),
--     i(3, "path"),
--     i(4, "directory"),
--     i(5, "owner"),
--     i(6, "owner"),
--   })),

--   s("v.file-touch", fmt([[
-- - name: {}
--   ansible.builtin.file:
--     path: "{}"
--     state: touch
-- ]], {
--     i(1, "Description"),
--     i(2, "path_to_new_file"),
--   })),


--   s("v.git", fmt([[
-- - name: {}
--   ansible.builtin.git:
--     repo: "{}"
--     dest: "{}"
--     force: {}
-- ]], {
--     i(1, "Description"),
--     i(2, "url"),
--     i(3, "dest"),
--     c(4, { t("true"), t("false") }),
--   })),
  


--   s("v.group", fmt([[
-- - name: {}
--   ansible.builtin.group_by:
--     key: {}{}  # variable to identify group
--     parents:
--       - "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "variable_to_identify_group"),
--     t(""),
--     i(3, "next_key_name"),
--   })),

--  s("v.hostname", fmt([[
-- - name: {}
--   ansible.builtin.hostname:
--     name: "{}"{}{}
-- ]], {
--     i(1, "Description"),
--     i(2, "desired_hostname"),
--     c(3, { t(""), fmt("\n    use: {}", { c(1, {
--       t("alpine"), t("debian"), t("freebsd"), t("generic"), t("macos"),
--       t("macosx"), t("darwin"), t("openbsd"), t("openrc"), t("redhat"),
--       t("sles"), t("solaris"), t("systemd")
--     }) }) }),
--     t(""),
--   })),



--   s("v.import-playbook", fmt([[
-- - name: {}
--   ansible.builtin.import_playbook: {}{}{}
-- ]], {
--     i(1, "Description"),
--     i(2, "playbook_to_import"),
--     c(3, { t(""), fmt("\n  vars:\n    {}: \"{}\"", { i(3, "variable_name"), i(4, "variable_value") }) }),
--     t(""),
--   })),

--   s("v.import-role", fmt([[
-- - name: {}
--   ansible.builtin.import_role:
--     name: "{}"
--     allow_duplicates: {}{}{}
-- ]], {
--     i(1, "Description"),
--     i(2, "role_to_import"),
--     c(3, { t("true"), t("false") }),
--    c(4, { t(""), fmt("\n  vars:\n    {}: {}", { i(5, "role_var_name"), i(6, "role_var_value") }) }),
--     t(""),
--   })),


--   s("v.import-tasks", fmt([[
-- - name: {}
--   ansible.builtin.import_tasks: {}
-- ]], {
--     i(1, "Description"),
--     i(2, "file_name"),
--   })),


--     s("v.include-role", fmt([[
-- - name: {}
--   ansible.builtin.include_role:
--     name: {}
--     allow_duplicates: {}
--     public: {}{}
-- ]], {
--     i(1, "Description"),
--     i(2, "role_to_include"),
--     c(3, { t("true"), t("false") }),
--     c(4, { t("false"), t("true") }),
--     c(5, {
--   t(""),
--   fmt([[
--   vars:
--     {}: {}
-- ]], { i(5, "role_var_name"), i(6, "role_var_value") })
-- }),
--   })),

--   s("v.include-tasks", fmt([[
-- - name: {}
--   ansible.builtin.include_tasks: {}
-- ]], {
--     i(1, "Description"),
--     i(2, "file_name"),
--   })),

--   s("v.include-vars", fmt([[
-- - name: {}, loading dynamically at run-time
--   ansible.builtin.include_vars:
--     file: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "file_name"),
--   })),



--    s("v.iptables", fmt([[
-- - name: {}
--   ansible.builtin.iptables:
--     action: {}
--     chain: '{}'
--     comment: {}
--     destination: {}
--     destination_port: {}
--     dst_range: {}
--     flush: {}
--     icmp_type: {}
--     in_interface: {}
--     ip_version: {}
--     jump: {}
--     out_interface: {}
--     policy: {}
--     protocol: {}
--     source: {}
--     source_port: {}
--     source_range: {}
--     state: {}
--     table: {}
--     to_destination: {}
--     to_ports: {}
--     to_source: {}
-- ]], {
--     i(1, "Description"),
--     c(2, { t("append"), t("insert") }),
--     c(3, { t("INPUT"), t("FORWARD"), t("OUTPUT"), t("PREROUTING"), t("POSTROUTING"), t("SECMARK"), t("CONNSECMARK") }),
--     i(4, "comment"),
--     i(5, "destination"),
--     i(6, "destination_port"),
--     i(7, "destination_range"),
--     c(8, { t("true"), t("false") }),
--     i(9, "icmp_type"),
--     i(10, "in_interface"),
--     c(11, { t("ipv4"), t("ipv6") }),
--     i(12, "jump"),
--     i(13, "out_interface"),
--     c(14, { t("ACCEPT"), t("DROP"), t("QUEUE"), t("RETURN") }),
--     c(15, { t("tcp"), t("udp"), t("udplite"), t("icmp"), t("ipv6-icmp"), t("icmpv6"), t("esp"), t("ah"), t("sctp"), t("all") }),
--     i(16, "source"),
--     i(17, "source_port"),
--     i(18, "source_range"),
--     c(19, { t("present"), t("absent") }),
--     c(20, { t("filter"), t("nat"), t("mangle"), t("raw"), t("security") }),
--     i(21, "to_destination"),
--     i(22, "to_ports"),
--     i(23, "to_source"),
--   })),



--   s("v.lineinfile", fmt([[
-- - name: {}
--   ansible.builtin.lineinfile:
--     path: {}
--     state: {}
--     line: "{}"
--     create: {}{}
-- ]], {
--     i(1, "Description"),
--     i(2, "dest_path"),
--     c(3, { t("present"), t("absent") }),
--     i(4, "myline"),
--     c(5, { t("true"), t("false") }),
--     c(6, {
--       t(""),
--       fmt([[
--     owner: "{}"
--     group: "{}"
--     mode: "{}"
-- ]], { i(1, "owner"), i(2, "owner"), i(3, "0700") }),
--     }),
--   })),

--   s("v.known-hosts", fmt([[
-- - name: {}
--   ansible.builtin.known_hosts:
--     name: "{}"
--     state: {}{}
-- ]], {
--     i(1, "Description"),
--     i(2, "host_to_add_or_remove"),
--     c(3, { t("present"), t("absent") }),
--     c(4, {
--       t(""),
--       fmt([[
--     key: "{}"
--     hash_host: {}
--     path: "{}"
-- ]], { i(1, "ssh_public_host_key_string"), c(2, { t("yes"), t("no") }), i(3, "known_hosts_file_path") }),
--     }),
--   })),


--   s("v.meta", fmt([[
-- - name: {}
--   ansible.builtin.meta: {}
-- ]], {
--     i(1, "Description"),
--     c(2, { t("clear_facts"), t("clear_host_errors"), t("end_host"), t("end_play"), t("flush_handlers"), t("noop"), t("refresh_inventory"), t("reset_connection"), t("end_batch") }),
--   })),

--   s("v.package", fmt([[
-- - name: {}
--   ansible.builtin.package:
--     name:
--       - {}
--     state: {}
--   register: apt_status
--   until: apt_status is success
--   delay: 6
--   retries: 10
-- ]], {
--     i(1, "Description"),
--     i(2, "package_to_manage"),
--     c(3, { t("present"), t("absent") }),
--   })),



--   s("v.package-facts", fmt([[
-- - name: {}
--   ansible.builtin.package_facts:
--     manager: auto  # puts results in ansible_facts.packages
-- ]], {
--     i(1, "Description"),
--   })),

--   s("v.pause-foruser", fmt([[
-- - name: Waiting for User to press Enter
--   ansible.builtin.pause:
--     prompt: '{}'
-- ]], {
--     i(1, "Waiting for User to press Enter"),
--   })),

--    s("v.pause-fortime", fmt([[
-- - name: Waiting for {} {}
--   ansible.builtin.pause:
--     {}: {}
-- ]], {
--     i(1, "amount_to_wait"),
--     c(2, { t("minutes"), t("seconds") }),
--     rep(2),
--     rep(1),
--   })),


--   s("v.pip-install", fmt([[
-- - name: {}
--   ansible.builtin.pip:
--     state: {}
--     chdir: "{}"
--     name:
--       - {}
-- ]], {
--     i(1, "Description"),
--     c(2, { t("latest"), t("present"), t("forcereinstall"), t("absent") }),
--     i(3, "cd_dir"),
--     i(4, "package_name"),
--   })),

--   s("v.pip-requirements", fmt([[
-- - name: {}
--   ansible.builtin.pip:
--     requirements: "{}"
--     chdir: "{}"
--     virtualenv: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "requirements_location"),
--     i(3, "cd_dir"),
--     i(4, "virtenv_dir"),
--   })),

--   s("v.raw", fmt([[
-- - name: {}
--   ansible.builtin.raw: {}
-- ]], {
--     i(1, "Description"),
--     i(2, "command_to_run"),
--   })),


--   s("v.reboot", fmt([[
-- - name: {}
--   ansible.builtin.reboot:
--     reboot_timeout: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "seconds_to_wait"),
--   })),


--    s("v.rpm_key", fmt([[
-- - name: {}
--   ansible.builtin.rpm_key:
--     key: "{}"
--     state: {}
--     validate_certs: {}
-- ]], {
--     i(1, "Description"),
--     i(2, "key_url"),
--     c(3, { t("present"), t("absent") }),
--     c(4, { t("true"), t("false") }),
--   })),

--   s("v.script", fmt([[
-- - name: {}
--   ansible.builtin.script:
--     cmd: "{}"{}{}{}
-- ]], {
--     i(1, "Description"),
--     i(2, "path_to_local_script"),
--     c(3, { t(""), fmt("\n    chdir: \"{}\"", i(1, "dir_on_remote_node")) }),
--     c(4, { t(""), fmt("\n    creates: \"{}\"", i(1, "if_present_dont_run")) }),
--     c(5, { t(""), fmt("\n    removes: \"{}\"", i(1, "if_missing_dont_run")) }),
-- })),


--   s("v.service", fmt([[
-- - name: Ensure {} is {}
--   ansible.builtin.service:
--     name: {}
--     state: {}
--     enabled: {}
-- ]], {
--     i(1, "servicename"),
--     c(2, { t("started"), t("stopped"), t("restarted"), t("reloaded") }),
--     rep(1),
--     rep(2),
--     c(3, { t("true"), t("false") }),
--   })),


--   s("v.service-facts", fmt([[
-- - name: {}
--   ansible.builtin.service_facts:
--   # Returns results in ansible_facts.services
-- ]], {
--     i(1, "Description"),
--   })),

--   s("v.set-fact", fmt([[
-- - name: {}
--   ansible.builtin.set_fact:
--     {}: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "my_fact_name"),
--     i(3, "value"),
--   })),


--   s("v.set-stats", fmt([[
-- - name: {}
--   ansible.builtin.set_stats:
--     aggregate: {}
--     per_host: {}
--     data:
--       {}: {}
-- ]], {
--     i(1, "Description"),
--     c(2, { t("true"), t("false") }),
--     c(3, { t("false"), t("true") }),
--     i(4, "Datakey"),
--     i(5, "Datavalue"),
--   })),

-- s("v.slurp", fmt([[
-- - name: {}
--   ansible.builtin.slurp:
--     src: "{}"
--   register: {}
--   # Contents at "{}['content'] | b64decode"
-- ]], {
--     i(1, "Description"),
--     i(2, "path_to_file"),
--     i(3, "file_contents_var"),
--     rep(3),
--   })),


--    s("v.stat", fmt([[
-- - name: {}
--   ansible.builtin.stat:
--     path: "{}"
--   register: {}
--   #{}.stat.exists to check file existance
-- ]], {
--     i(1, "Description"),
--     i(2, "path_to_file"),
--     i(3, "variable_for_file_status"),
--     rep(3),
--   })),

--   s("v.template", fmt([[
-- - name: {}
--   ansible.builtin.template:
--     src: {}
--     dest: {}
--     force: {}
--     mode: {}
--     {}{}
-- ]], {
--     i(1, "Description"),
--     i(2, "local_source"),
--     i(3, "remote_destination"),
--     c(4, { t("true"), t("false") }),
--     i(5, "'0770'"),
--     c(6, { t(""), fmt("\n    owner: {}", i(1, "owner")) }),
--     c(7, { t(""), fmt("\n    group: {}", i(1, "group")) }),
--   })),


--   s("v.unarchive", fmt([[
-- - name: {}
--   ansible.builtin.unarchive:
--     src: "{}"
--     dest: "{}"
--     remote_src: {}{}
-- ]], {
--     i(1, "Description"),
--     i(2, "source_path"),
--     i(3, "destination_path"),
--     c(4, { t("true"), t("false") }),
--     c(5, {
--       t(""),
--       fmt('\n    creates: "{}"', i(1, "created_file")),
--     }),
--   })),


--   s("v.uri", fmt([[
-- - name: {}
--   ansible.builtin.uri:
--     url: "{}{}"
--     method: "{}"
--     force_basic_auth: {}
--     url_username: "{}"
--     url_password: "{}"
--     attributes: "{}"
--     body: "{}"
--     body_format: "{}"
--     ca_path: "{}"
--     client_cert: "{}"
--     client_key: "{}"
--     creates: "{}"
--     removes: "{}"
--     src: "{}"
--     dest: "{}"
--     follow_redirects: {}
--     force: {}
--     owner: "{}"
--     group: "{}"
--     mode: "{}"
--     headers:
--       - {}
--     http_agent: "{}"
--     remote_src: {}
--     return_content: {}
--     status_code: {}
--     timeout: {}
--     unix_socket: "{}"
--     unsafe_writes: {}
--     use_gssapi: {}
--     use_proxy: {}
--     validate_certs: {}
-- ]], {
--     i(1, "Description"),
--     c(2, { t("http://"), t("https://") }),
--     i(3, "url_host_domain_port_path"),
--     c(4, { t("GET"), t("POST"), t("PUT"), t("DELETE"), t("CONNECT"), t("HEAD"), t("OPTIONS"), t("TRACE") }),
--     c(5, { t("true"), t("false") }),
--     i(6, "username_for_auth"),
--     i(7, "password_for_auth"),
--     i(8, "file_attributes"),
--     i(9, "web_request_body"),
--     c(10, { t("raw"), t("form-urlencoded"), t("json"), t("form-multipart") }),
--     i(11, "ca_pem_path"),
--     i(12, "client_pem_path"),
--     i(13, "client_key_pem_path"),
--     i(14, "created_file_path"),
--     i(15, "file_thats_removed"),
--     i(16, "path_to_remote_file"),
--     i(17, "path_to_download_to"),
--     c(18, { t("safe"), t("all"), t("no"), t("none"), t("urllib2"), t("yes") }),
--     c(19, { t("true"), t("false") }),
--     i(20, "owner"),
--     i(21, rep(20)),
--     i(22, "0700"),
--     i(23, "HEADER1"),
--     i(24, "http_agent_str"),
--     c(25, { t("true"), t("false") }),
--     c(26, { t("true"), t("false") }),
--     i(27, "[200, other_success_codes]"),
--     i(28, "timeout_in_seconds"),
--     i(29, "connection_socket_path"),
--     c(30, { t("true"), t("false") }),
--     c(31, { t("true"), t("false") }),
--     c(32, { t("true"), t("false") }),
--     c(33, { t("true"), t("false") }),
--   })),


--   s("v.user", fmt([[
-- - name: {} {}
--   ansible.builtin.user:
--     name: {}
--     comment: {}
--     state: {}
--     append: {}  # Append Groups to user, instead of overwrite
--     create_home: {}
--     groups: {}
--     system: {}
-- ]], {
--     i(1, "Description"),
--     i(2, "Username"),
--     rep(2),
--     rep(1),
--     c(3, { t("present"), t("absent") }),
--     c(4, { t("false"), t("true") }),
--     c(5, { t("true"), t("false") }),
--     i(6, "groups"),
--     c(7, { t("false"), t("true") }),
--   })),

--   s("v.wait-for-connection", fmt([[
-- - name: {}
--   ansible.builtin.wait_for_connection:{}
-- ]], {
--     i(1, "Description"),
--     fmt([[
--     connect_timeout: {}
--     delay: {}
--     sleep: {}
--     timeout: {}
-- ]], {
--       i(2, "seconds_to_wait_before_retrying"),
--       i(3, "seconds_to_wait_before_trying_to_connect"),
--       i(4, "seconds_to_wait_between_checks"),
--       i(5, "max_seconds_to_wait_before_marking_task_failed"),
--     }),
--   })),


--   s("v.wait-for", fmt([[
-- - name: {}
--   ansible.builtin.wait_for:
--     path: {}
--     state: {}
--     delay: {}
-- ]], {
--     i(1, "Description"),
--     i(2, "filename"),
--     c(3, { t("present"), t("absent") }),
--     i(4, "delayInSeconds"),
--   })),

--   s("v.yum", fmt([[
-- - name: {}
--   ansible.builtin.yum:
--     name:
--       - {}
--     state: {}
--     disable_gpg_check: {}
--     update_cache: {}
--     validate_certs: {}
-- ]], {
--     i(1, "Description"),
--     i(2, "package_name"),
--     c(3, { t("present"), t("absent"), t("latest"), t("installed"), t("removed") }),
--     c(4, { t("true"), t("false") }),
--     c(5, { t("true"), t("false") }),
--     c(6, { t("true"), t("false") }),
--   })),

--   s("v.yum_repository", fmt([[
-- - name: Add Repository for {}
--   ansible.builtin.yum_repository:
--     name: {}
--     description: {}
--     baseurl: {}
--     state: {}
--     enabled: {}
-- ]], {
--     i(1, "RepoName"),
--     rep(1),
--     i(2, "Description"),
--     i(3, "BaseUrl"),
--     c(4, { t("present"), t("absent") }),
--     c(5, { t("true"), t("false") }),
--   })),

-- s("v.tempfile", fmt([[
-- - name: {}
--   ansible.builtin.tempfile:
--     {}{}{}
--     state: {}
--   register: {}_{}
-- ]], {
--     i(1, "Create temporary file or dir"),

--     -- path
--     c(2, {
--       t(""),
--       fmt('path: "{}"\n    ', { i(1, "/tmp") }),
--     }),

--     -- prefix
--     c(3, {
--       t(""),
--       fmt('prefix: "{}"\n    ', { i(1, "my_") }),
--     }),

--     -- suffix
--     c(4, {
--       t(""),
--       fmt('suffix: "{}"\n    ', { i(1, "_tmp") }),
--     }),

--     -- state: file | directory
--     c(5, {
--       t("file"),
--       t("directory"),
--     }),

--     -- base register name
--     i(6, "tempfile"),

--     -- autogenerated state suffix
--     c(7, {
--       t("file"),
--       t("dir"),
--     }),


--   })),


--    s("v.sysvinit", fmt([[
-- - name: {}
--   ansible.builtin.sysvinit:
--     name: "{}"{}{}{}
-- ]], {
--     i(1, "Description"),

--     i(2, "name_of_service"),

--     -- state (optional)
--     c(3, {
--       t(""),
--       fmt('\n    state: {}', {
--         c(1, {
--           t("started"),
--           t("stopped"),
--           t("restarted"),
--           t("reloaded"),
--         }),
--       }),
--     }),

--     -- enabled (optional)
--     c(4, {
--       t(""),
--       fmt('\n    enabled: {}', {
--         c(1, {
--           t("true"),
--           t("false"),
--         }),
--       }),
--     }),

--     -- runlevels (optional, один или несколько)
--     c(5, {
--       t(""),
--       fmt('\n    runlevels:\n      - {}', {
--         c(1, {
--           t("1 # Single User"),
--           t("2 # Multi-User"),
--           t("3 # Multi-User with Network"),
--           t("4 # User Defined"),
--           t("5 # Level 3 plus Display (X)"),
--         }),
--       }),
--     }),
--   })),

--  s("v.systemd", fmt([[
-- - name: {}
--   ansible.builtin.systemd:
--     name: "{}"
--     state: {}{}{}{}{}{}
-- ]], {
--     i(1, "Description"),           -- {}
--     i(2, "service_name"),         -- {}
--     c(3, {                        -- {}
--       t("started"),
--       t("stopped"),
--       t("reloaded"),
--       t("restarted"),
--     }),
--     -- enabled
--     c(4, {
--       t(""),
--       t("\n    enabled: true"),
--       t("\n    enabled: false"),
--     }),
--     -- masked
--     c(5, {
--       t(""),
--       t("\n    masked: true"),
--       t("\n    masked: false"),
--     }),
--     -- force
--     c(6, {
--       t(""),
--       t("\n    force: true"),
--       t("\n    force: false"),
--     }),
--     -- daemon_reload
--     c(7, {
--       t(""),
--       t("\n    daemon_reload: true"),
--       t("\n    daemon_reload: false"),
--     }),
--     -- scope
--     c(8, {
--       t(""),
--       t("\n    scope: system"),
--       t("\n    scope: user"),
--       t("\n    scope: global"),
--     }),
--   })),


--   s("v.shell", fmt([[
-- - name: {}
--   ansible.builtin.shell:
--     cmd: "{}"{}{}{}
-- ]], {
--     i(1, "Description"), -- {}
--     i(2, "command"),     -- {}

--     -- chdir (optional)
--     c(3, {
--       t(""),
--       fmt('\n    chdir: "{}"', { i(1, "/some/dir") }),
--     }),

--     -- creates (optional)
--     c(4, {
--       t(""),
--       fmt('\n    creates: "{}"', { i(1, "/path/to/file") }),
--     }),

--     -- removes (optional)
--     c(5, {
--       t(""),
--       fmt('\n    removes: "{}"', { i(1, "/path/to/file") }),
--     }),
--   })),


--   s("v.setup", fmt([[
-- - name: {}
--   ansible.builtin.setup:{}{}{}
-- ]], {
--     i(1, "Description"),

--     -- gather_subset (optional)
--     c(2, {
--       t(""),
--       fmt([[
--     gather_subset:
--       - '{}'
--     ]], { i(1, "all,min,hardware,network,virtual,ohai,facter") }),
--     }),

--     -- filter (optional)
--     c(3, {
--       t(""),
--       fmt([[
--     filter:
--       - '{}'
--     ]], { i(1, "facts_to_collect") }),
--     }),

--     -- gather_timeout (optional)
--     c(4, {
--       t(""),
--       fmt("    gather_timeout: {}", { i(1, "timeout_in_seconds") }),
--     }),
--   })),

--   fmt([[
-- - name: {}
--   ansible.builtin.replace:
--     path: "{}"
--     regexp: "{}"
--     replace: "{}"{}{}{}{}{}
-- ]], {
--   i(1, "Description"),
--   i(2, "path_to_file"),
--   i(3, "text_to_find"),
--   i(4, "text_to_add"),

--   c(5, { t(""), fmt('\n    before: "{}"', i(1, "text_to_stop_search_at")) }),
--   c(6, { t(""), fmt('\n    after: "{}"', i(1, "text_to_begin_search_at")) }),
--   c(7, { t(""), fmt('\n    owner: "{}"', i(1, "file_owner")) }),
--   c(8, { t(""), fmt('\n    group: "{}"', i(1, "file_group")) }),
--   c(9, { t(""), fmt('\n    mode: "{}"', i(1, "0770")) }),
-- }),



-- s("v.group", fmt([[
-- - name: {}
--   ansible.builtin.group:
--     name: "{}"{}          
--     local: {}
--     state: {}
--     system: {}
-- ]], {
--     i(1, "Description"),
--     i(2, "Group_Name"),
--     c(3, { t(""), fmt('\n    gid: "{}"', i(1, "guid")) }),
--     c(4, { t("false"), t("true") }),
--     c(5, { t("present"), t("absent") }),
--     c(6, { t("false"), t("true") }),
--   })),

--  s("v.get-url", fmt([[
-- - name: {}
--   ansible.builtin.get_url:
--     url: "{}"
--     dest: "{}"
--     force: {}{}{}{}{}
-- ]], {
--     i(1, "Description"),
--     i(2, "url"),
--     i(3, "dest"),
--     c(4, { t("true"), t("false") }),

--     -- optional owner
--     c(5, { t(""), fmt('\n    owner: "{}"', i(1, "owner")) }),

--     -- optional group
--     c(6, { t(""), fmt('\n    group: "{}"', i(1, "group")) }),

--     -- optional mode
--     c(7, { t(""), fmt('\n    mode: "{}"', i(1, "0700")) }),

--     -- optional validate_certs
--     c(8, { t(""), fmt('\n    validate_certs: {}', c(1, { t("true"), t("false") })) }),
--   })),

--    s("v.find-byname", fmt([[
-- - name: {}
--   ansible.builtin.find:
--     paths: "{}"
--     patterns: "*{}*"{}{}{}{}
--   register: find_results
-- ]], {
--     i(1, "Description"),
--     i(2, "path_to_search"),
--     i(3, "regex_to_match"),

--     c(4, { 
--       t(""), 
--       fmt("\n    file_type: {}", c(1, { t("file"), t("any"), t("directory"), t("link") })) 
--     }),

--     c(5, { 
--       t(""), 
--       fmt("\n    hidden: {}", c(1, { t("false"), t("true") })) 
--     }),

--     c(6, { 
--       t(""), 
--       fmt("\n    recurse: {}", c(1, { t("true"), t("false") })) 
--     }),

--     c(7, { 
--       t(""), 
--       fmt('\n    excludes: "{}"', i(1, "regex_to_exclude")) 
--     }),
--   })),

--     s("v.find-bycontent", fmt([[
-- - name: {}
--   ansible.builtin.find:
--     paths: "{}"
--     contains: "{}"
--     file_type: file{}{}{}{}
--   register: find_results
-- ]], {
--     i(1, "Description"),
--     i(2, "path_to_search"),
--     i(3, "data_in_file"),
--     c(4, {
--       t(""),
--       fmt("\n    hidden: {}", c(1, { t("false"), t("true") })),
--     }),
--     c(5, {
--       t(""),
--       fmt("\n    recurse: {}", c(1, { t("true"), t("false") })),
--     }),
--     c(6, {
--       t(""),
--       fmt('\n    patterns: "{}"', i(1, "regex_to_match")),
--     }),
--     c(7, {
--       t(""),
--       fmt('\n    excludes: "{}"', i(1, "regex_to_exclude")),
--     }),
--   })),

--    s("v.getent", fmt([[
-- - name: {}
--   ansible.builtin.getent:
--     database: {} 
--     key: "{}"{}{}
-- ]], {
--     i(1, "Description"),
--     c(2, {
--       t("ahosts"), t("ahostsv4"), t("ahostsv6"), t("aliases"), t("ethers"),
--       t("group"), t("gshadow"), t("hosts"), t("initgroups"), t("netgroup"),
--       t("networks"), t("passwd"), t("protocols"), t("rpc"), t("services"), t("shadow")
--     }),
--     i(3, "key_to_search_for"),
--     c(4, { t(""), fmt("\n    fail_key: {}", { c(1, { t("false"), t("true") }) }) }),
--     c(5, { t(""), fmt("\n    split: '{}'", { i(1, "split_characters") }) }),
--   })),

--  s("v.dnf", fmt([[
-- - name: {}
--   ansible.builtin.dnf:
--     name:
--       - {}
--     state: {}
--     update_cache: {}
--   register: dnf_status
--   until: dnf_status is success
--   delay: 6
--   retries: 10
-- ]], {
--     i(1, "Description"),
--     i(2, "package_name"),
--     c(3, { t("present"), t("absent"), t("installed"), t("removed"), t("latest") }),
--     c(4, { t("true"), t("false") }),
--   })),

-- s("v.debconf", fmt([[
-- - name: {}
--   ansible.builtin.debconf:
--     name: "{}"{}{}
--     vtype: {}
--     question: "{}"
--     value: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "package_to_configure"),
--     c(3, { t(""), t("\n    unseen: no"), t("\n    unseen: yes") }),
--     c(4, { t(""), t("\n    something_else: yes") }), -- Нужно, если второй {} после name
--     c(5, { t("boolean"), t("error"), t("multiselect"), t("note"), t("password"), t("seen"), t("select"), t("string"), t("text"), t("title") }),
--     i(6, "debconf_configuration_setting"),
--     i(7, "answer_to_question"),
-- })),

-- s("v.cron", fmt([[
-- - name: {}
--   ansible.builtin.cron:
--     name: "{}"
--     state: {}
--     special_time: "{}"
--     minute: "{}"
--     hour: "{}"
--     day: "{}"
--     month: "{}"
--     weekday: "{}"
--     user: "{}"
--     job: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "description_of_job"),
--     c(3, { t("present"), t("absent") }),
--     c(4, { t(""), t("annually"), t("daily"), t("hourly"), t("monthly"), t("reboot"), t("weekly"), t("yearly") }),
--     i(5, "*"),   -- minute
--     i(6, "*"),   -- hour
--     i(7, "*"),   -- day
--     i(8, "*"),   -- month
--     i(9, "*"),   -- weekday
--     i(10, "root"), -- user
--     i(11, "command_to_run"), -- job
-- })),

--  s("v.command", fmt([[
-- - name: {}
--   ansible.builtin.command:
--     cmd: "{}"
--     chdir: "{}"
--     creates: "{}"
--     removes: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "command_to_run"),
--     i(3, "working_directory"),
--     i(4, "file_if_present_dont_run"),
--     i(5, "file_if_present_do_run"),
--   })
-- ),
  
--    s("v.blockinfile", fmt([[
-- - name: {}
--   ansible.builtin.blockinfile:
--     path: "{}"
--     create: {}
--     state: {}
--     insertafter: "{}"
--     insertbefore: "{}"
--     owner: "{}"
--     group: "{}"
--     mode: "{}"
--     block: | 
--       {}
--       {}
-- ]], {
--     i(1, "Description"),
--     i(2, "file_to_modify"),
--     i(3, "true"),
--     i(4, "present"),
--     i(5, "regex_to_start_at"),
--     i(6, "regex_to_end_at"),
--     i(7, "owner"),
--     rep(7),  -- повторяем owner как group
--     i(9, "0700"),
--     i(10, "first_line_to_add"),
--     i(11, "second_line_to_add"),
--   })),


--   s("v.assemble", fmt([[
-- - name: {}
--   ansible.builtin.assemble:
--     src: "{}"
--     dest: "{}"
--     ignore_hidden: {}
--     regexp: "{}"
--     remote_src: {}
--     owner: "{}"
--     group: "{}"
--     mode: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "source_folder"),
--     i(3, "destination_location"),
--     i(4, "true"),
--     i(5, "regexp_of_filenames_to_assemble"),
--     i(6, "false"),
--     i(7, "owner"),
--     rep(7),
--     i(9, "0700"),
-- })),


-- s("v.telnet", fmt([[
-- - name: {}
--   ansible.netcommon.telnet:
-- {}
-- ]], {
--   i(1, "Description"),
--   fmt([[
--     user: "{}"
--     password: "{}"
--     login_prompt: "{}"
--     host: "{}"
--     prompts:
--       - {}
--     command:
--       - {}
--   ]], {
--     i(2, "user_name"),
--     i(3, "password_val"),
--     i(4, "expected_prompt"),
--     i(5, "hostname_to_connect"),
--     i(6, "Prompt_before_sending_command"),
--     i(7, "Command_to_run"),
--   }),
-- })),

-- s("v.find-byage", fmt([[
-- - name: {}
--   ansible.builtin.find:
--     paths: "{}"
--     age: "{}"{}{}{}{}{}{}{}{}{}
--   register: find_results
-- ]], {
--     i(1, "Description"),
--     i(2, "path_to_search"),
--     i(3, "age_number"),
--     c(4, { t("a"), t("m"), t("h"), t("d"), t("w") }),

--     c(5, {
--       t(""),
--       fmt("\n    age_stamp: {}", { c(1, { t("mtime"), t("atime"), t("ctime") }) }),
--     }),

--     c(6, {
--       t(""),
--       fmt("\n    file_type: {}", { c(1, { t("file"), t("any"), t("directory"), t("link") }) }),
--     }),

--     c(7, {
--       t(""),
--       fmt("\n    hidden: {}", { c(1, { t("false"), t("true") }) }),
--     }),

--     c(8, {
--       t(""),
--       fmt("\n    recurse: {}", { c(1, { t("true"), t("false") }) }),
--     }),

--     c(9, {
--       t(""),
--       fmt('\n    patterns: "{}"', { i(1, "regex_to_match") }),
--     }),

--     c(10, {
--       t(""),
--       fmt('\n    excludes: "{}"', { i(1, "regex_to_exclude") }),
--     }),

--     t(""),  -- 11th placeholder
--     t(""),  -- 12th placeholder - fixes error
--   })),

--   s("v.wait-for-txt", fmt([[
-- - name: {}
--   community.dns.wait_for_txt:
--     records:
--       - name: "{}"
--         values: "{}"
--         mode: "{}"
-- ]], {
--     i(1, "Description"),
--     i(2, "domain_value"),
--     i(3, "value_to_wait_for"),
--     c(4, { t("subset"), t("superset"), t("superset_not_empty"), t("equals"), t("equals_ordered") }),
--   })),

--   s("v.ansible.small.md5-password", {
--     t('"{{\''), i(1, "mypassword"), t('\' | hash(\'md5\')}}\"'),
--   }),

--   s("v.ansible.small.file-content", {
--     t("{{lookup('file', '"), i(1, "filename"), t("') }}"),
--   }),

--   s("v.ansible.small.ipv4", {
--     t("{{ ansible_default_ipv4.address }}"),
--   }),

--   s("v.ansible.small.random-string", {
--     t("{{ lookup('password', '/dev/null chars=ascii_letters,digits,punctuation length="),
--     i(1, "string_len"),
--     t("') }}"),
--   }),

--   s({"v.ansible.small.handy-facts", "handy_facts"}, {
--     t("{{ "), 
--     c(1, {
--       t("ansible_lsb.description"),
--       t("ansible_default_ipv4.address"),
--       t("ansible_fqdn"),
--       t("ansible_user_id"),
--       t("ansible_os_family"),
--     }),
--     t(" }}"),
--   }),

--   s({"v.ansible.small.environment", "env"}, {
--     t("{{ lookup('env', '"), i(1, "environment_variable_name"), t("') }}"),
--   }),

--    s("v.ansible.large.command-variable", fmt([[
-- - name: Make command execution for {}
--   set_fact:
--     {}_var: >-
--       {}
--       {}
--       --{} {}
--       --{} {}
--   {}
--   ]], {
--     i(1, "my_command"),
--     i(2, "my_command"),
--     i(3, "my_command"),
--     i(4, "raw_param"),
--     i(5, "param1"),
--     i(6, "param1_val"),
--     i(7, "param2"),
--     i(8, "param2_val"),
--     i(0)
--   })),

--   s("v.ansible.large.state-complete-flag", fmt([[
-- - name: Check if {}
--   ansible.builtin.stat:
--     path: "{{ {}_path }}"
--   register: {}

--   {}
--   when: not {}.stat.exists

-- - name: Touch a file to demonstrate {}
--   ansible.builtin.file:
--     path: "{{ {}_path }}"
--     state: touch
--     mode: '0700'
--   when: not {}.stat.exists
--   ]], {
--     i(1, "condition_is_true"),
--     i(2, "flag_name"),
--     rep(2),
--     i(0),
--     rep(2),
--     rep(1),
--     rep(2),
--     rep(2),
--   })),

--   s("v.ansible.large.randomize-undefined-string", fmt([[
-- - name: Set {} since it was provided
--   ansible.builtin.set_fact:
--     {}: "{{ {} }}"
--   when: {}
--   no_log: true

-- - name: Create {} since it was not provided
--   ansible.builtin.set_fact:
--     {}: "{{ lookup('community.general.random_string', length=24, special=false) }}"
--   when: not {}
--   no_log: true

-- - name: Drop copy of {} on local box
--   ansible.builtin.copy:
--     content: "{{ {} }}"
--     dest: "{{ {}_password_path }}"
--     force: true
--     owner: "root"
--     group: "root"
--     mode: '0700'
--   when: {}_password_path
--   no_log: true

-- {}
-- ]], {
--     i(1, "key_description"),
--     i(3, "key_var_to_use"),
--     i(2, "variable_to_check"),
--     rep(2),
--     rep(1),
--     rep(3),
--     rep(2),
--     rep(3),
--     rep(3),
--     rep(3),
--     rep(3), -- added to fix missing arg
--     i(0),
-- }))



-- }
