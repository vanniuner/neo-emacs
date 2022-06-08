
# Table of Contents

1.  [About](#orgbc60c91)
2.  [How to install](#orgb3c274c)
    1.  [Install emacs](#org6dc3c53)
    2.  [Building Emacs](#orgdca17b1)
    3.  [Clone doom-emacs](#org80c0c4f)
    4.  [Clone neo-emacs](#orgd15a3cf)
    5.  [Doom Install](#orgbf9a109)
3.  [Private setting](#org97226cc)
4.  [Lsp-java Usage](#orgda323fa)
5.  [Dap-java Usage](#org8fedd4b)
6.  [Company box customize](#orgd8f3fe9)
7.  [Ejc-sql Usage](#org6567cbf)
8.  [Bookmark](#orga2f19bd)
9.  [Rime Usage](#orgbbc3443)
10. [Libvterm Usage](#orgee41f6b)
11. [Questions](#orgf1828ea)
    1.  [install ffmpeg](#org1aa0529)
    2.  [how to install all-the-icons?](#orga597d1d)
    3.  [how to install rime ?](#org5134bb5)
    4.  [how to install vterm?](#orgc020ede)
    5.  [lsp-springboot](#org9a0d7de)
    6.  [useful key setting](#org37eb71b)
12. [Elpa Offline](#org45b4ccd)
13. [FZF Config](#orgea55b01)
    1.  [fish config](#orga27376a)
    2.  [how to ignore files](#org3dd1946)
14. [Dependencies](#orgd48a48d)

![img](./neo-emacs.gif)  


<a id="orgbc60c91"></a>

# About

Neo emacs is a configuration framework for GNU Emacs which is based on doom emacs and focuses on the java web application coding environment. Neo emacs has the following features:  

-   Code completion: Lsp-java supports maven and gradle project.
-   Program debugging: Dap-java supports program debugging.
-   Http client: Rest-client is a tool to manually explore and test HTTP REST webservices just like Postman.
-   SQL client: Ejc-sql turns Emacs into a simple SQL client which supports various databases.
-   Terminal emulator: Emacs-libvterm (vterm) is fully-fledged terminal emulator inside GNU Emacs based on libvterm.
-   Knowledge management system: Org-roam borrows principles from the Zettelkasten method, providing a solution for non-hierarchical note-taking.
-   [onlinedoc](http://1.117.167.195/doc/neo-emacs.html)


<a id="orgb3c274c"></a>

# How to install


<a id="org6dc3c53"></a>

## Install emacs

Choose your operation system and install it.  

-   [gnu-emacs](https://www.gnu.org/software/emacs/) is the official emacs client.
-   [emacs-plus](https://github.com/d12frosted/homebrew-emacs-plus) is the best choice to run NeoEmcas.
-   export EMACS=/Applications/Emacs.app/Contents/MacOS/Emacs, this depends on your installation path.


<a id="orgdca17b1"></a>

## Building Emacs

    1  git clone git://git.savannah.gnu.org/emacs.git
    2  cd emacs
    3  git checkout emacs-28
    4  brew install  libxml2
    5  make configure
    6  ./configure --with-native-compilation --with-modern-papirus-icon --with-no-titlebar
    7  make -j4
    8  make install
    9  open nextstep/Emacs.app


<a id="org80c0c4f"></a>

## Clone doom-emacs

    1  git clone https://github.com/hlissner/doom-emacs.git ~/.emacs.d/


<a id="orgd15a3cf"></a>

## Clone neo-emacs

    git clone https://github.com/vanniuner/neo-emacs.git ~/.doom.d/


<a id="orgbf9a109"></a>

## Doom Install

Make sure that you have some setting in your terminal environment.  

Set up a vpn if you need it.  

    export http_proxy="ip:port"
    export https_proxy="ip:port"

Set your emacs cmd for doom install.  

    export EMACS= $YOUR EMACS CMD PATH$

At last run below, this will take few minutes. And it depends on the quality of your network.  

    ~/.emacs.doom/bin/doom install


<a id="org97226cc"></a>

# Private setting

Changing config in the config.el.  

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


</table>

<!-- This HTML table template is generated by emacs 28.1 -->
<table border="1">
  <tr>
    <td align="left" valign="top">
      &nbsp;rg-exec-path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"/opt/homebrew/bin/rg"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;rg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exec&nbsp;path&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;fd-exec-path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"/opt/homebrew/bin/fd"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;fd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exec&nbsp;path&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;dot-exec-path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"/opt/homebrew/bin/dot"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;dot&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exec&nbsp;path&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;lsp-maven-path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"~/.m2/settings.xml"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;maven&nbsp;setting&nbsp;path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;pdflatex-exec-path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"/Library/TeX/texbin/pdflatex"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;pdflatex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exec&nbsp;path&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;org-directory&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"~/org/"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;org&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;root&nbsp;path&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;org-roam-directory&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"~/org/org-roam"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;org&nbsp;roam&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;root&nbsp;path&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;lsp-java-java-path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;java11&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exec&nbsp;path&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;doom-font&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;font&nbsp;setting&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;display-line-numbers-type&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;nil&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;show&nbsp;line&nbsp;number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;rime-user-data-dir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"~/Library/Rime/"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;rime&nbsp;config&nbsp;input&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;rime-librime-root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"~/.doom.d/myconfig/rime-macos/dist"&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;emacs-rime/blob/master/&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;emacs-module-root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;/opt/homebrew/opt/emacs-plus@28/include&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;emcas&nbsp;module&nbsp;root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;node-bin-dir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"~/node-v16.14.0/bin"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;node&nbsp;exec&nbsp;path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;lsp-java-jdt-download-url&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;http://1.117.167.195/download&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;jdt-server&nbsp;URL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
  </tr>
</table>


<a id="orgda323fa"></a>

# Lsp-java Usage

-   generate .project & .classpath files  
    
        mvn eclipse:clean eclipse:eclipse
-   support projectlombok plugin
-   Key binding  
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    </table>
    
    <!-- This HTML table template is generated by emacs 28.1 -->
    <table border="1">
      <tr>
        <td align="left" valign="top">
          &nbsp;KEY&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;FUNCTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;DESCRIPTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;M-i&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-goto-implementation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;find&nbsp;where&nbsp;sub&nbsp;class&nbsp;definition&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;M-o&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-java-open-super-implementation&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;goto&nbsp;where&nbsp;super&nbsp;class&nbsp;definition&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;M-t&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-treemacs-references&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;find&nbsp;where&nbsp;your&nbsp;code&nbsp;be&nbsp;referenced&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;s-d&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-goto-type-definition&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;goto&nbsp;type&nbsp;definition&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;f&nbsp;r&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-format-region&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;format&nbsp;the&nbsp;region&nbsp;java&nbsp;code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;f&nbsp;b&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-format-buffer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;format&nbsp;the&nbsp;whole&nbsp;file&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;m&nbsp;&nbsp;&nbsp;<br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-java-add-unimplemented-methods&nbsp;<br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;add&nbsp;function&nbsp;code&nbsp;template&nbsp;for&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          &nbsp;unimplemented&nbsp;methods&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;;&nbsp;i&nbsp;&nbsp;&nbsp;<br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-java-organize-imports&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;import&nbsp;require&nbsp;package&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          &nbsp;or&nbsp;delete&nbsp;some&nbsp;unuse&nbsp;package&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
    </table>


<a id="org8fedd4b"></a>

# Dap-java Usage

-   Config the debug host and port, add file $usr\_private\_dir/dap-java-config.el.
-   Use \`(setq user-private-dir &ldquo;$usr\_private\_dir/dap-java-config.el&rdquo; )\` make it effective.  
    
        1      (dap-register-debug-template
        2      "user-service"
        3      (list :name "Java Attach"
        4              :type "java"
        5              :request "attach"
        6              :projectName "user-service"
        7              :hostName "127.0.0.1"
        8              :port 1044))
-   key binding  
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    </table>
    
    <!-- This HTML table template is generated by emacs 28.1 -->
    <table border="1">
      <tr>
        <td align="left" valign="top">
          &nbsp;KEY&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;FUNCTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;DESCRIPTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;n&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;dap-next&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;Breakpoint&nbsp;next&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;b&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;dap-breakpoint-toggle&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;c&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;dap-continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;r&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;dap-eval-region&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;a&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;dap-eval-thing-at-point&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;d&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;dap-debug&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;u&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;dap-ui-repl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
    </table>


<a id="orgd8f3fe9"></a>

# Company box customize

-   use \`M-x all-the-icons-material\` for checking icon
-   company-icon icon config file: ~/.emacs.d/modules/completion/company/config.el


<a id="org6567cbf"></a>

# Ejc-sql Usage

-   Config your db connection in the $usr\_private\_dir/db-work.el.  
    
        (use-package ejc-sql
        :commands ejc-sql-mode ejc-connect
        :config
        (setq clomacs-httpd-default-port 18090)
        (ejc-create-connection "connection-name"
                :classpath      "~/.m2/repository/mysql/mysql-connector-java/8.0.17/mysql-connector-java-8.0.17.jar"
                :connection-uri "jdbc:mysql://localhost/user?useSSL=false&user=root&password=pwd"
                :separator      "</?\.*>" )
        )
        (provide 'db-work)

-   sql file  
    
         1  
         2       <SELECT>
         3       SELECT * FROM TABLE_ORG
         4       </SELECT>
         5  
         6       <SELECT>
         7       delimiter ;
         8       COMMENT ON COLUMN TABLE_ORG.PROJECT_CODE IS '项目编码';
         9       COMMENT ON COLUMN TABLE_ORG.PERIOD IS '期间';
        10       </SELECT>
-   key binding  
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    </table>
    
    <!-- This HTML table template is generated by emacs 28.1 -->
    <table border="1">
      <tr>
        <td align="left" valign="top">
          &nbsp;KEY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;FUNCTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;SPC&nbsp;e&nbsp;c&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;ejc-connection&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;choose&nbsp;connection&nbsp;with&nbsp;ivy&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;C-c&nbsp;C-c&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;ejc-execute&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;execute&nbsp;the&nbsp;sql&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
    </table>


<a id="orga2f19bd"></a>

# Bookmark

-   the bookmark file location :~/.emacs.d/.local/etc/bookmarks

    (setq bookmark-default-file "~/org/org-roam/command/doom/config/bookmark")


<a id="orgbbc3443"></a>

# Rime Usage

-   <https://github.com/DogLooksGood/emacs-rime> supply this plugin.
-   <https://github.com/rime/plum> for more infomation.
-   some rime input method config at .doom.d/myconfig/rime-config.


<a id="orgee41f6b"></a>

# Libvterm Usage

-   Ubuntu  
    
        sudo apt install cmake
        sudo apt install libtool-bin
-   MacOs  
    
        sudo brew install cmake libtool
-   Key Binding  
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    </table>
    
    <!-- This HTML table template is generated by emacs 28.1 -->
    <table border="1">
      <tr>
        <td align="left" valign="top">
          &nbsp;KEY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;FUNCTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;DESCRIPTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;SPC&nbsp;v&nbsp;v&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;projectile-run-vterm&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;open&nbsp;vterm&nbsp;window&nbsp;base&nbsp;on&nbsp;the&nbsp;project&nbsp;root&nbsp;path&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;SPC&nbsp;v&nbsp;p&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;vterm-send-start&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;enable&nbsp;vterm&nbsp;screen&nbsp;roll&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;SPC&nbsp;v&nbsp;s&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;vterm-send-stop&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;disable&nbsp;vterm&nbsp;screen&nbsp;roll&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
    </table>


<a id="orgf1828ea"></a>

# Questions


<a id="org1aa0529"></a>

## install ffmpeg

-   brew install ffmpeg


<a id="orga597d1d"></a>

## how to install all-the-icons?

-   M-x install-package all-the-icons
-   M-x all-the-icons-install-fonts


<a id="org5134bb5"></a>

## how to install rime ?

-   M-x install-package rime

unzip rime-1.5.3-osx.zip -d ~/.emacs.d/librime  


<a id="orgc020ede"></a>

## how to install vterm?

    cd .emacs.d/.local/straight/build/vterm/
    mkdir -p build
    # install cmake and libtool-bin
    brew install cmake, brew install libtool
    mkdir -p build
    cd build
    cmake ..
    make


<a id="org9a0d7de"></a>

## lsp-springboot

    mvn -Djdt.js.server.root=/Users/van/.emacs.d/.local/etc/.cache/lsp/eclipse.jdt.ls/server/ -Djunit.runner.root=/Users/van/.emacs.d/.local/etc/eclipse.jdt.ls/test-runner/ -Djunit.runner.fileName=junit-platform-console-standalone.jar -Djava.debug.root=/Users/van/.emacs.d/.local/etc/.cache/lsp/eclipse.jdt.ls/server/bundles clean package -Djdt.download.url=http://download.eclipse.org/jdtls/snapshots/jdt-language-server-latest.tar.gz -f lsp-java-server-build.pom


<a id="org37eb71b"></a>

## useful key setting

-   Change caps\_lock to control if pressed with other keys, to escape if pressed alone.  
    ![img](key-change.png)


<a id="org45b4ccd"></a>

# Elpa Offline

rsync -avz rsync://mirrors.tuna.tsinghua.edu.cn/elpa ~/soft/emacs-elpa  

    (setq configuration-layer--elpa-archives
          '(("melpa-cn" . "/soft/emacs-elpa/melpa/")
            ("org-cn"   . "/soft/emacs-elpa/org/")
            ("gnu-cn"   . "/soft/emacs-elpa/gnu/")
            ("marmalade-cn"   . "/soft/emacs-elpa//marmalade/")))


<a id="orgea55b01"></a>

# FZF Config


<a id="orga27376a"></a>

## fish config

    set -x FZF_DEFAULT_OPTS "--preview-window 'right:57%' --preview 'bat --style=numbers --line-range :300 {}' --bind ctrl-y:preview-up,ctrl-e:preview-down,ctrl-b:preview-page-up,ctrl-f:preview-page-down,ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down,shift-up:preview-top,shift-down:preview-bottom,alt-up:half-page-up,alt-down:half-page-down"
    set -x FZF_DEFAULT_COMMAND  'fd --type f --hidden --follow --exclude ".git" . ".idea" . ".vscode" . "node_modules" . "build" . "target" . "classes" . "out" . "class" . "*.svg" . "*.puml" . "*.orgids" . "*.css" . "*.DS_Store" '


<a id="org3dd1946"></a>

## how to ignore files

-   add ~/.fdignore  
    
        .DS_Store
        .orgids
        *.svg
        *.puml
        *.css
        *.class
        *.attach
        *.~undo-tree~
        crpt


<a id="orgd48a48d"></a>

# Dependencies

<https://github.com/hlissner/doom-emacs/blob/master/docs/getting_started.org>  

<https://github.com/BurntSushi/ripgrep>  

<https://github.com/junegunn/fzf>  

<https://github.com/kostafey/ejc-sql>  

<https://leiningen.org/>  

<https://plantuml.com/>  

<https://github.com/emacs-lsp/lsp-java>  

<https://projectlombok.org/>  

<https://github.com/DogLooksGood/emacs-rime>  

<https://github.com/be5invis/Sarasa-Gothic>  

<https://github.com/akicho8/string-inflection>  

<https://raw.githubusercontent.com/alibaba/p3c/master/p3c-formatter/eclipse-codestyle.xml>  

<https://www.tug.org/mactex/>  

