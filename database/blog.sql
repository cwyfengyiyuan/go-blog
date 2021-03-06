CREATE TABLE `article` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `user_id` int(11) DEFAULT '0' COMMENT '用户ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `category_id` int(11) NOT NULL COMMENT '分类ID',
  `tag` varchar(255) NOT NULL DEFAULT '' COMMENT 'Tag',
  `remark` varchar(500) NOT NULL DEFAULT '' COMMENT '摘要',
  `desc` longtext NOT NULL COMMENT '详情',
  `pv` int(255) DEFAULT '0' COMMENT 'px',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '更新时间',
  `status` int(11) DEFAULT '1' COMMENT '1可用，2禁用，3删除',
  `review` int(11) DEFAULT '0' COMMENT '评论'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `article` ADD `recommend` INT(4) NOT NULL DEFAULT '0' COMMENT '是否顶置，0否；1是，默认否';

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL COMMENT '主键',
  `name` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT '0' COMMENT '父ID',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `status` int(11) DEFAULT '1' COMMENT '状态1正常，2删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `ip` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `create` datetime NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `page` varchar(255) DEFAULT NULL,
  `uri` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名字',
  `review` varchar(500) NOT NULL DEFAULT '' COMMENT '评论',
  `reply` varchar(500) NOT NULL COMMENT '回复',
  `site` varchar(500) NOT NULL COMMENT '网址',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '回复时间',
  `status` int(11) DEFAULT '1' COMMENT '1可用，2禁用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名字',
  `review` varchar(500) NOT NULL DEFAULT '' COMMENT '评论',
  `reply` varchar(500) NOT NULL COMMENT '回复',
  `site` varchar(500) NOT NULL COMMENT '网址',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '回复时间',
  `status` int(11) DEFAULT '1' COMMENT '1可用，2禁用',
  `article_id` int(11) DEFAULT '1' COMMENT '文章ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `setting` (
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `value` text NOT NULL COMMENT '详情',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `wechat_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `openid` varchar(32) NOT NULL COMMENT 'open ID',
  `nickname` varchar(255) DEFAULT NULL COMMENT '用户名',
  `sex` int(11) DEFAULT '0' COMMENT '性别',
  `city` varchar(32) DEFAULT NULL COMMENT '城市',
  `country` varchar(32) DEFAULT NULL COMMENT '国家',
  `province` varchar(32) DEFAULT NULL COMMENT '省份',
  `language` varchar(32) DEFAULT NULL COMMENT '语种',
  `headimgurl` varchar(255) DEFAULT NULL COMMENT '头像',
  `subscribe_time` int(11) DEFAULT NULL COMMENT '订阅时间',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


--
-- 转储表的索引
--

--
-- 表的索引 `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键';

--
-- 使用表AUTO_INCREMENT `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';
COMMIT;

