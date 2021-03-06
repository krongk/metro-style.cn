#encoding: utf-8
ActiveAdmin.register Page do
  menu :label => "网页中心", :priority  => 2
  menu :parent => "网页中心"

  filter :title
  filter :menu_match
  filter :updated_at
  filter :show_in_menu
  filter :deletable

  index do
    column :id
    column :title do |item|
      link_to item.title, admin_page_path(item)
    end
    column :data_row 
    column :data_col
    column :data_sizex 
    column :data_sizey
    # column :updated_at do |item|
    #   item.updated_at.strftime("%Y-%m-%d")
    # end
    default_actions
  end

  show do |item|
    h3 item.title, :class => 'admin_title'
    div :class => 'admin_content' do
      simple_format item.body
    end
  end

  sidebar :"帮助中心" do
    ul do
      li "网站前台大部分的网页的动态编辑部分，都在这部分修改！"
      li "请根据’标题‘与前台的菜单相对应。"
      li "’删除‘操作，可能导致前台显示错误，所以在考虑要删除一条数据，请别点击’删除‘菜单，而是在编辑页面中，将’可否删除‘修改为’1‘。"
    end
  end

  sidebar :"格式中心" do
      div %{排版类型:  text, image, icon, text cycle, icon cycle}
      div %{如果采用: image cycle, 需要指定两张图片则: a.jpg|b.jpg}
      hr
      div %{主题颜色：<table>
        <tbody><tr>
          <th>Name</th>
          <th>Code</th>
          <th>Name</th>
          <th>Code</th>
        </tr>
        <tr>
          <td class="bld wt" style="background: red">red</td>
          <td class="tcw">#ff0000</td>
          <td class="bld" style="background: white">white</td>
          <td class="tcw">#ffffff</td>
        </tr>
        <tr>
          <td class="bld" style="background: cyan">cyan</td>
          <td class="tcw">#00ffff</td>
          <td class="bld" style="background: silver">silver</td>
          <td class="tcw">#c0c0c0</td>
        </tr>
        <tr>
          <td class="bld wt" style="background: blue">blue</td>
          <td class="tcw">#0000ff</td>
          <td class="bld wt" style="background: grey">grey</td>
          <td class="tcw">#808080</td>
        </tr>
        <tr>
          <td class="bld wt" style="background: darkblue">darkblue</td>
          <td class="tcw">#0000a0</td>
          <td class="bld wt" style="background: black">black</td>
          <td class="tcw">#000000</td>
        </tr>
        <tr>
          <td class="bld" style="background: lightblue">lightblue</td>
          <td class="tcw">#add8e6</td>
          <td class="bld wt" style="background: orange">orange</td>
          <td class="tcw">#ffa500</td>
        </tr>
        <tr>
          <td class="bld wt" style="background: purple">purple</td>
          <td class="tcw">#800080</td>
          <td class="bld wt" style="background: brown">brown</td>
          <td class="tcw">#a52a2a</td>
        </tr>
        <tr>
          <td class="bld" style="background: yellow">yellow</td>
          <td class="tcw">#ffff00</td>
          <td class="bld wt" style="background: maroon">maroon</td>
          <td class="tcw">#800000</td>
        </tr>
        <tr>
          <td class="bld" style="background: lime">lime</td>
          <td class="tcw">#00ff00</td>
          <td class="bld wt" style="background: green">green</td>
          <td class="tcw">#008000</td>
        </tr>
        <tr>
          <td class="bld wt" style="background-color: #009933;">lightgreen</td>
          <td class="tcw">#009933</td>
          <td class="bld wt" style="background-color: #cc0000;">lightred</td>
          <td class="tcw">#cc0000</td>
        </tr>
        <tr>
          <td class="bld wt" style="background: fuchsia">fuchsia</td>
          <td class="tcw">#ff00ff</td>
          <td class="bld wt" style="background: olive">olive</td>
          <td class="tcw">#808000</td>
        </tr>
        <tr>
          <td class="bld wt" style="background-color:rgb(0,171,169);">teal</td>
          <td class="tcw">0,171,169</td>
          <td class="bld wt" style="background-color:rgb(101,118,136);">steel</td>
          <td class="tcw">101,118,136</td>
        </tr>
        <tr>
          <td class="bld wt" style="background-color:rgb(0, 80, 239);">cobalt</td>
          <td class="tcw">0,171,169</td>
          <td class="bld wt" style="background-color:rgb(162, 0, 37);">crimson</td>
          <td class="tcw">101,118,136</td>
        </tr>
        <tr>
          <td class="bld wt" style="background-color:rgb(0, 138, 0);">emerald</td>
          <td class="tcw">0,171,169</td>
          <td class="bld wt" style="background-color:rgb(106,0,255);">indigo</td>
          <td class="tcw">101,118,136</td>
        </tr>
        <tr>
          <td class="bld wt" style="background-color:rgb(162,193,57);">lime</td>
          <td class="tcw">0,171,169</td>
          <td class="bld wt" style="background-color:rgb(216,0,115);">magenta</td>
          <td class="tcw">101,118,136</td>
        </tr>
        <tr>
          <td class="bld wt" style="background-color:rgb(240,150,9);">mango</td>
          <td class="tcw">0,171,169</td>
          <td class="bld wt" style="background-color:rgb(118,95,137);">mauve</td>
          <td class="tcw">101,118,136</td>
        </tr>
        <tr>
          <td class="bld wt" style="background-color:rgb(123,58,62);">sienna</td>
          <td class="tcw">0,171,169</td>
          <td class="bld wt" style="background-color:rgb(230,113,184);">pink</td>
          <td class="tcw">101,118,136</td>
        </tr>
      </tbody></table>}.html_safe
  end

end
