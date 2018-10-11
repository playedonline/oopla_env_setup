-- MySQL dump 10.13  Distrib 5.6.41, for Win64 (x86_64)
--
-- Host: localhost    Database: oopla
-- ------------------------------------------------------
-- Server version	5.6.32-78.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `achievement_instances`
--

DROP TABLE IF EXISTS `achievement_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievement_instances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `achievement_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `achievement_instances_unique_user_id_achievement_id` (`user_id`,`achievement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `completion_operator` varchar(255) NOT NULL,
  `completion_value` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `level` int(11) NOT NULL,
  `group` int(11) NOT NULL DEFAULT '1',
  `difficulty` int(11) DEFAULT '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1393 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_channels`
--

DROP TABLE IF EXISTS `ad_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) DEFAULT NULL,
  `campaign_name` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `channel_type` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `dfp_impressions_factor` float NOT NULL DEFAULT '1',
  `dfp_actual_cpm` float DEFAULT NULL,
  `cost_per_click` float DEFAULT NULL,
  `campaign_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `by_channel` (`channel`)
) ENGINE=InnoDB AUTO_INCREMENT=33153 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_serving_rules`
--

DROP TABLE IF EXISTS `ad_serving_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_serving_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `geo` varchar(255) DEFAULT NULL,
  `first_impression_organic` int(11) NOT NULL,
  `last_impression_organic` int(11) NOT NULL,
  `probability_organic` float NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `first_impression_paid` int(11) NOT NULL DEFAULT '0',
  `last_impression_paid` int(11) NOT NULL DEFAULT '1000',
  `probability_paid` float NOT NULL DEFAULT '1',
  `auto_optimization` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_ad_serving_rules_on_geo` (`geo`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ad_units`
--

DROP TABLE IF EXISTS `ad_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) DEFAULT NULL,
  `unit_type` char(255) DEFAULT '',
  `div_id` char(255) DEFAULT NULL,
  `position` char(255) DEFAULT '',
  `version` char(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adwords_adgroups`
--

DROP TABLE IF EXISTS `adwords_adgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adwords_adgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_channel_id` varchar(255) DEFAULT NULL,
  `adgroup_id` varchar(255) DEFAULT NULL,
  `adgroup_name` varchar(255) DEFAULT NULL,
  `clicks` int(11) DEFAULT NULL,
  `bid_type` varchar(255) DEFAULT NULL,
  `pages_per_visit` float DEFAULT NULL,
  `cpc_bid` float DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `progress_status` varchar(255) DEFAULT 'New',
  `progress_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_adwords_adgroups_on_ad_channel_id` (`ad_channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alternatives`
--

DROP TABLE IF EXISTS `alternatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alternatives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `experiment_id` int(11) DEFAULT '0',
  `content` varchar(255) DEFAULT NULL,
  `lookup` varchar(32) DEFAULT NULL,
  `weight` int(11) DEFAULT '1',
  `participants` int(11) DEFAULT '0',
  `conversions` int(11) DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  `conversion_attempts` int(11) DEFAULT '0',
  `alternative_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1190 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `authentications`
--

DROP TABLE IF EXISTS `authentications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authentications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_provider_uid` (`provider`,`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2595351 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avatar_likes`
--

DROP TABLE IF EXISTS `avatar_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatar_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `origin_user_id` int(11) DEFAULT NULL,
  `target_user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_avatar_likes_on_origin_user_id` (`origin_user_id`),
  KEY `index_avatar_likes_on_target_user_id` (`target_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3429091 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `board_type` varchar(10) NOT NULL DEFAULT 'max',
  `awards_coins` tinyint(1) NOT NULL DEFAULT '0',
  `max_valid_score` int(11) DEFAULT '10000000',
  `score_grouping_factor` int(11) DEFAULT '1000',
  `is_main_board` tinyint(1) DEFAULT '0',
  `is_cross_cycle` tinyint(1) DEFAULT '0',
  `min_score_factor` float DEFAULT '0.15',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2064 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `challenges`
--

DROP TABLE IF EXISTS `challenges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `challenges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `sent` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_challenges_on_from` (`from`),
  KEY `index_challenges_on_to` (`to`),
  KEY `index_challenges_on_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=355338 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `circulation_tracker`
--

DROP TABLE IF EXISTS `circulation_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `circulation_tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clean_follows_status`
--

DROP TABLE IF EXISTS `clean_follows_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clean_follows_status` (
  `date` datetime NOT NULL,
  `a_value` int(11) DEFAULT NULL,
  `z_value` int(11) DEFAULT NULL,
  `rows_affected` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `collection_items`
--

DROP TABLE IF EXISTS `collection_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '10000',
  `is_visible` tinyint(1) DEFAULT '0',
  `impressions` int(11) DEFAULT '2',
  `clicks` int(11) DEFAULT '2',
  `ctr` float DEFAULT '1',
  `total_play_time` float DEFAULT '0',
  `efficiency` float DEFAULT '0',
  `sr_clicks` int(11) DEFAULT NULL,
  `site_retention_score` float DEFAULT '0',
  `game_retention_score` float DEFAULT '0',
  `clicks_share` float DEFAULT '0',
  `gr_ctr` float DEFAULT '0',
  `sr_ctr` float DEFAULT '0',
  `efficiency_ctr` float DEFAULT '0',
  `efficiency_gr` float DEFAULT '0',
  `efficiency_cr` float DEFAULT '0',
  `promotions_counter` int(11) DEFAULT '0',
  `thumb_alerts_counter` int(11) DEFAULT '0',
  `fixed_position` tinyint(1) DEFAULT '0',
  `position_ctr` int(11) DEFAULT NULL,
  `position_rating` int(11) DEFAULT NULL,
  `position_updated_at` datetime DEFAULT '2013-01-01 00:00:00',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_collection_items_on_game_id_and_collection_id` (`game_id`,`collection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36704 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `collection_type` varchar(255) DEFAULT NULL,
  `thumb_file_name` varchar(255) DEFAULT NULL,
  `thumb_content_type` varchar(255) DEFAULT NULL,
  `thumb_file_size` int(11) DEFAULT NULL,
  `thumb_updated_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT '1',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `coloring_pages`
--

DROP TABLE IF EXISTS `coloring_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coloring_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `is_visible` tinyint(1) DEFAULT '0',
  `thumb_file_name` varchar(255) DEFAULT NULL,
  `thumb_content_type` varchar(255) DEFAULT NULL,
  `thumb_file_size` int(11) DEFAULT NULL,
  `thumb_updated_at` datetime DEFAULT NULL,
  `preview_img_file_name` varchar(255) DEFAULT NULL,
  `preview_img_content_type` varchar(255) DEFAULT NULL,
  `preview_img_file_size` int(11) DEFAULT NULL,
  `preview_img_updated_at` datetime DEFAULT NULL,
  `svg_img_file_name` varchar(255) DEFAULT NULL,
  `svg_img_content_type` varchar(255) DEFAULT NULL,
  `svg_img_file_size` int(11) DEFAULT NULL,
  `svg_img_updated_at` datetime DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `conversion_values`
--

DROP TABLE IF EXISTS `conversion_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversion_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) DEFAULT NULL,
  `conversion_type` varchar(255) DEFAULT NULL,
  `conversion_value` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_conversion_values_on_channel_and_conversion_type` (`channel`,`conversion_type`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country_akas`
--

DROP TABLE IF EXISTS `country_akas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_akas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) DEFAULT NULL,
  `aka` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country_codes`
--

DROP TABLE IF EXISTS `country_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_codes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `abbr` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `country_group` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country_collections`
--

DROP TABLE IF EXISTS `country_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_game_variables`
--

DROP TABLE IF EXISTS `custom_game_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_game_variables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_game_custom_variables_on_game_id` (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `delayed_jobs`
--

DROP TABLE IF EXISTS `delayed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delayed_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` int(11) DEFAULT '0',
  `attempts` int(11) DEFAULT '0',
  `handler` text,
  `last_error` text,
  `run_at` datetime DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `locked_by` varchar(255) DEFAULT NULL,
  `queue` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_handler` (`handler`(160)),
  KEY `delayed_jobs_priority` (`priority`,`run_at`)
) ENGINE=InnoDB AUTO_INCREMENT=181167 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exception_log_records`
--

DROP TABLE IF EXISTS `exception_log_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exception_log_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exception` text,
  `action_data` text,
  `backtrace` text,
  `params` text,
  `action` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `client` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18763775 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `experiments`
--

DROP TABLE IF EXISTS `experiments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `bb` datetime DEFAULT NULL,
  `cc` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `archived_at` datetime DEFAULT NULL,
  `experiment_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `test_name` (`test_name`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `followed_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_followable_id_follower_id` (`followed_id`,`follower_id`),
  KEY `fk_follows` (`follower_id`),
  KEY `fk_followables` (`followed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=260457284 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_levels`
--

DROP TABLE IF EXISTS `game_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `level_json` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `thumb` longtext,
  `gameplays_counter` int(11) DEFAULT '0',
  `flagged_counter` int(11) DEFAULT '0',
  `rate_up` int(11) DEFAULT '0',
  `rate_down` int(11) DEFAULT '0',
  `featured` tinyint(1) DEFAULT '0',
  `permalink` varchar(255) DEFAULT NULL,
  `level_thumb_file_name` varchar(255) DEFAULT NULL,
  `level_thumb_content_type` varchar(255) DEFAULT NULL,
  `level_thumb_file_size` int(11) DEFAULT NULL,
  `level_thumb_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_game_levels_on_game_id` (`game_id`),
  KEY `index_game_levels_on_permalink` (`permalink`),
  KEY `random_games` (`game_id`,`featured`,`thumb`(3),`level_thumb_file_size`)
) ENGINE=InnoDB AUTO_INCREMENT=59418 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `coins_dispensed` int(11) DEFAULT '0',
  `accumulated_play_time` float DEFAULT '0',
  `payout_balancing_factor` float DEFAULT '1',
  `auto_award_coins_mode` int(11) DEFAULT '0',
  `api_mouse_hidden` tinyint(1) DEFAULT '0',
  `money_account_id` int(11) DEFAULT NULL,
  `revenue_share` float DEFAULT '0.5',
  `embed_code` text,
  `description` varchar(255) DEFAULT NULL,
  `instructions` varchar(255) DEFAULT NULL,
  `keys` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `is_coins_game` tinyint(1) DEFAULT '0',
  `is_visible` tinyint(1) DEFAULT '0',
  `is_scalable` int(1) DEFAULT '0',
  `uses_alternative_ad` tinyint(1) DEFAULT '0',
  `block_links` tinyint(1) DEFAULT '0',
  `block_ads` tinyint(1) DEFAULT '0',
  `preroll_behavior` int(11) DEFAULT '2',
  `play_count` int(11) DEFAULT '0',
  `returning_play_count` int(11) DEFAULT '0',
  `unique_players` int(11) DEFAULT '0',
  `thumb_square_file_name` varchar(255) DEFAULT NULL,
  `thumb_square_content_type` varchar(255) DEFAULT NULL,
  `thumb_square_file_size` int(11) DEFAULT NULL,
  `thumb_square_updated_at` datetime DEFAULT NULL,
  `thumb_big_square_file_name` varchar(255) DEFAULT NULL,
  `thumb_big_square_content_type` varchar(255) DEFAULT NULL,
  `thumb_big_square_file_size` int(11) DEFAULT NULL,
  `thumb_big_square_updated_at` datetime DEFAULT NULL,
  `thumb_wide_file_name` varchar(255) DEFAULT NULL,
  `thumb_wide_content_type` varchar(255) DEFAULT NULL,
  `thumb_wide_file_size` int(11) DEFAULT NULL,
  `thumb_wide_updated_at` datetime DEFAULT NULL,
  `swf_file_size` int(11) DEFAULT '0',
  `swf_file_updated_at` datetime DEFAULT NULL,
  `swf_temp_file_size` int(11) DEFAULT '0',
  `swf_temp_file_updated_at` datetime DEFAULT NULL,
  `show_new_ribbon` tinyint(1) DEFAULT '0',
  `tile_thumb_file_name` varchar(255) DEFAULT NULL,
  `tile_thumb_content_type` varchar(255) DEFAULT NULL,
  `tile_thumb_file_size` int(11) DEFAULT NULL,
  `tile_thumb_updated_at` datetime DEFAULT NULL,
  `big_tile_thumb_file_name` varchar(255) DEFAULT NULL,
  `big_tile_thumb_content_type` varchar(255) DEFAULT NULL,
  `big_tile_thumb_file_size` int(11) DEFAULT NULL,
  `big_tile_thumb_updated_at` datetime DEFAULT NULL,
  `revshare_enabled` tinyint(1) DEFAULT '0',
  `is_featured_game_enabled` tinyint(1) DEFAULT '0',
  `cpm_goal` int(11) DEFAULT NULL,
  `announce_highscore` tinyint(1) DEFAULT NULL,
  `uses_dynamic_preloader` tinyint(1) DEFAULT '0',
  `ignore_scores` tinyint(1) DEFAULT '0',
  `alt_game_id` int(11) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `thumbs_up` int(11) DEFAULT '0',
  `thumbs_down` int(11) DEFAULT '0',
  `secret_sauce` mediumtext,
  `wmode` varchar(255) DEFAULT NULL,
  `visible_in_countries` varchar(255) DEFAULT NULL,
  `unity` tinyint(1) DEFAULT '0',
  `fb_page_url` varchar(255) DEFAULT NULL,
  `afc_cpm` float NOT NULL DEFAULT '0',
  `in_game_cpm` float NOT NULL DEFAULT '0',
  `preroll_cpm` float NOT NULL DEFAULT '0',
  `total_cpm` float NOT NULL DEFAULT '0',
  `exit_rate` float DEFAULT '100',
  `show_midroll` tinyint(1) DEFAULT '0',
  `game_layout` int(11) DEFAULT NULL,
  `is_child_directed` tinyint(1) DEFAULT NULL,
  `old_permalink` varchar(255) DEFAULT NULL,
  `is_archived` tinyint(1) NOT NULL DEFAULT '0',
  `video_content_id` int(11) DEFAULT NULL,
  `video_content_type` varchar(255) DEFAULT NULL,
  `app_store_url` varchar(255) DEFAULT NULL,
  `google_play_url` varchar(255) DEFAULT NULL,
  `game_comment` text,
  `app_store_title` varchar(255) DEFAULT NULL,
  `google_play_title` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `username_field` varchar(255) DEFAULT NULL,
  `user_id_field` varchar(255) DEFAULT NULL,
  `hash_field` varchar(255) DEFAULT NULL,
  `sso_enabled` int(11) DEFAULT '0',
  `custom_keywords` varchar(255) DEFAULT NULL,
  `custom_title` varchar(255) DEFAULT NULL,
  `custom_og_title` varchar(255) DEFAULT NULL,
  `is_fullscreen` tinyint(1) DEFAULT '0',
  `current_plays` int(11) DEFAULT NULL,
  `multiplayer` tinyint(1) DEFAULT NULL,
  `min_width` int(11) DEFAULT NULL,
  `is_html5` tinyint(1) DEFAULT '0',
  `original_zip_file_name` varchar(255) DEFAULT NULL,
  `original_zip_content_type` varchar(255) DEFAULT NULL,
  `original_zip_file_size` int(11) DEFAULT NULL,
  `original_zip_updated_at` datetime DEFAULT NULL,
  `is_webgl` tinyint(1) DEFAULT '0',
  `html5_index_path` varchar(255) DEFAULT NULL,
  `is_minigame` tinyint(1) DEFAULT '0',
  `is_scrapped` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_mobile` tinyint(1) DEFAULT '0',
  `screen_orientation` int(11) DEFAULT NULL,
  `disable_fit_to_ratio` tinyint(1) DEFAULT NULL,
  `is_similar_games_hidden` tinyint(1) DEFAULT NULL,
  `hide_in_app` tinyint(1) DEFAULT '0',
  `preview_video_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_games_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=5367 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `games_backup`
--

DROP TABLE IF EXISTS `games_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `coins_dispensed` int(11) DEFAULT '0',
  `accumulated_play_time` float DEFAULT '0',
  `payout_balancing_factor` float DEFAULT '1',
  `auto_award_coins_mode` int(11) DEFAULT '0',
  `api_mouse_hidden` tinyint(1) DEFAULT '0',
  `money_account_id` int(11) DEFAULT NULL,
  `revenue_share` float DEFAULT '0.5',
  `embed_code` text,
  `description` varchar(255) DEFAULT NULL,
  `instructions` varchar(255) DEFAULT NULL,
  `keys` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `is_coins_game` tinyint(1) DEFAULT '0',
  `is_visible` tinyint(1) DEFAULT '0',
  `is_scalable` int(1) DEFAULT '0',
  `uses_alternative_ad` tinyint(1) DEFAULT '0',
  `block_links` tinyint(1) DEFAULT '0',
  `block_ads` tinyint(1) DEFAULT '0',
  `preroll_behavior` int(11) DEFAULT '2',
  `play_count` int(11) DEFAULT '0',
  `returning_play_count` int(11) DEFAULT '0',
  `unique_players` int(11) DEFAULT '0',
  `thumb_square_file_name` varchar(255) DEFAULT NULL,
  `thumb_square_content_type` varchar(255) DEFAULT NULL,
  `thumb_square_file_size` int(11) DEFAULT NULL,
  `thumb_square_updated_at` datetime DEFAULT NULL,
  `thumb_big_square_file_name` varchar(255) DEFAULT NULL,
  `thumb_big_square_content_type` varchar(255) DEFAULT NULL,
  `thumb_big_square_file_size` int(11) DEFAULT NULL,
  `thumb_big_square_updated_at` datetime DEFAULT NULL,
  `thumb_wide_file_name` varchar(255) DEFAULT NULL,
  `thumb_wide_content_type` varchar(255) DEFAULT NULL,
  `thumb_wide_file_size` int(11) DEFAULT NULL,
  `thumb_wide_updated_at` datetime DEFAULT NULL,
  `swf_file_size` int(11) DEFAULT '0',
  `swf_file_updated_at` datetime DEFAULT NULL,
  `swf_temp_file_size` int(11) DEFAULT '0',
  `swf_temp_file_updated_at` datetime DEFAULT NULL,
  `show_new_ribbon` tinyint(1) DEFAULT '0',
  `tile_thumb_file_name` varchar(255) DEFAULT NULL,
  `tile_thumb_content_type` varchar(255) DEFAULT NULL,
  `tile_thumb_file_size` int(11) DEFAULT NULL,
  `tile_thumb_updated_at` datetime DEFAULT NULL,
  `big_tile_thumb_file_name` varchar(255) DEFAULT NULL,
  `big_tile_thumb_content_type` varchar(255) DEFAULT NULL,
  `big_tile_thumb_file_size` int(11) DEFAULT NULL,
  `big_tile_thumb_updated_at` datetime DEFAULT NULL,
  `revshare_enabled` tinyint(1) DEFAULT '0',
  `is_featured_game_enabled` tinyint(1) DEFAULT '0',
  `cpm_goal` int(11) DEFAULT NULL,
  `announce_highscore` tinyint(1) DEFAULT NULL,
  `uses_dynamic_preloader` tinyint(1) DEFAULT '0',
  `ignore_scores` tinyint(1) DEFAULT '0',
  `alt_game_id` int(11) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `thumbs_up` int(11) DEFAULT '0',
  `thumbs_down` int(11) DEFAULT '0',
  `secret_sauce` mediumtext,
  `wmode` varchar(255) DEFAULT NULL,
  `visible_in_countries` varchar(255) DEFAULT NULL,
  `unity` tinyint(1) DEFAULT '0',
  `fb_page_url` varchar(255) DEFAULT NULL,
  `afc_cpm` float NOT NULL DEFAULT '0',
  `in_game_cpm` float NOT NULL DEFAULT '0',
  `preroll_cpm` float NOT NULL DEFAULT '0',
  `total_cpm` float NOT NULL DEFAULT '0',
  `exit_rate` float DEFAULT '100',
  `show_midroll` tinyint(1) DEFAULT '0',
  `game_layout` int(11) DEFAULT NULL,
  `is_child_directed` tinyint(1) DEFAULT NULL,
  `old_permalink` varchar(255) DEFAULT NULL,
  `is_archived` tinyint(1) NOT NULL DEFAULT '0',
  `video_content_id` int(11) DEFAULT NULL,
  `video_content_type` varchar(255) DEFAULT NULL,
  `app_store_url` varchar(255) DEFAULT NULL,
  `google_play_url` varchar(255) DEFAULT NULL,
  `game_comment` text,
  `app_store_title` varchar(255) DEFAULT NULL,
  `google_play_title` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `username_field` varchar(255) DEFAULT NULL,
  `user_id_field` varchar(255) DEFAULT NULL,
  `hash_field` varchar(255) DEFAULT NULL,
  `sso_enabled` int(11) DEFAULT '0',
  `custom_keywords` varchar(255) DEFAULT NULL,
  `custom_title` varchar(255) DEFAULT NULL,
  `custom_og_title` varchar(255) DEFAULT NULL,
  `is_fullscreen` tinyint(1) DEFAULT '0',
  `current_plays` int(11) DEFAULT NULL,
  `multiplayer` tinyint(1) DEFAULT NULL,
  `min_width` int(11) DEFAULT NULL,
  `is_html5` tinyint(1) DEFAULT '0',
  `original_zip_file_name` varchar(255) DEFAULT NULL,
  `original_zip_content_type` varchar(255) DEFAULT NULL,
  `original_zip_file_size` int(11) DEFAULT NULL,
  `original_zip_updated_at` datetime DEFAULT NULL,
  `is_webgl` tinyint(1) DEFAULT '0',
  `html5_index_path` varchar(255) DEFAULT NULL,
  `is_minigame` tinyint(1) DEFAULT '0',
  `is_scrapped` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_mobile` tinyint(1) DEFAULT '0',
  `screen_orientation` int(11) DEFAULT NULL,
  `disable_fit_to_ratio` tinyint(1) DEFAULT NULL,
  `is_similar_games_hidden` tinyint(1) DEFAULT NULL,
  `hide_in_app` tinyint(1) DEFAULT '0',
  `preview_video_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_games_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=5355 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `google_geos`
--

DROP TABLE IF EXISTS `google_geos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `google_geos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `criteria_id` int(11) NOT NULL,
  `canonical_name` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=906 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_ad_country_stats`
--

DROP TABLE IF EXISTS `hist_ad_country_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_ad_country_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `banner_type` varchar(255) DEFAULT NULL,
  `impressions` int(11) DEFAULT NULL,
  `ctr` float DEFAULT NULL,
  `cpm` float DEFAULT NULL,
  `revenues` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_index_ad_slots_stats` (`country`,`date`,`banner_type`)
) ENGINE=InnoDB AUTO_INCREMENT=312476 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_ad_stat_by_advertisers`
--

DROP TABLE IF EXISTS `hist_ad_stat_by_advertisers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_ad_stat_by_advertisers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `google_location_id` varchar(255) DEFAULT NULL,
  `google_advertiser_id` varchar(255) DEFAULT NULL,
  `google_advertiser_name` varchar(255) DEFAULT NULL,
  `revenue` float DEFAULT '0',
  `impressions` float DEFAULT '0',
  `advertiser_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_index_hist_ad_stat_by_advertisers` (`date`,`google_location_id`,`google_advertiser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=338704 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_ad_stat_by_locations`
--

DROP TABLE IF EXISTS `hist_ad_stat_by_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_ad_stat_by_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `google_location_id` int(11) DEFAULT NULL,
  `adwords_cost` float DEFAULT '0',
  `adwords_clicks` int(11) DEFAULT '0',
  `ga_users_desktop` int(11) DEFAULT '0',
  `ga_pageviews_desktop` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ga_users_mobile` int(11) DEFAULT '0',
  `ga_pageviews_mobile` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_index_hist_ad_stat_by_locations` (`google_location_id`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=78705 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_ad_stats`
--

DROP TABLE IF EXISTS `hist_ad_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_ad_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `visits` int(11) DEFAULT '0',
  `banner_impressions` int(11) DEFAULT '0',
  `video_impressions` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `cost` float DEFAULT '0',
  `conversions_adwords` int(11) DEFAULT '0',
  `impressions_afc` int(11) DEFAULT '0',
  `impressions_afg` int(11) DEFAULT '0',
  `impressions_adaptv` int(11) DEFAULT '0',
  `cpm_adaptv` float DEFAULT '0',
  `revenue_afc` float DEFAULT '0',
  `revenue_afg` float DEFAULT '0',
  `revenue_adaptv` float DEFAULT '0',
  `revenue_cpmstar` float DEFAULT '0',
  `uniques` int(11) DEFAULT '0',
  `plays` int(11) DEFAULT '0',
  `accumulated_play_time` bigint(11) DEFAULT '0',
  `video_attempts` int(11) DEFAULT '0',
  `cpm_afc` float DEFAULT '0',
  `impressions_dfp_server` int(11) DEFAULT '0',
  `revenue_dfp_server` float DEFAULT '0',
  `cpm_dfp_server` float DEFAULT '0',
  `preroll_impressions` int(11) DEFAULT '0',
  `attempts_adaptv` int(11) DEFAULT '0',
  `revenue_adx` float DEFAULT '0',
  `cpm_adx` float DEFAULT '0',
  `adwords_impressions` float DEFAULT '0',
  `dfp_impressions` int(11) DEFAULT NULL,
  `dfp_clicks` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_index_hist_ad_stats` (`channel`,`date`),
  KEY `date_idx` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=10404685 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_adgroup_stats`
--

DROP TABLE IF EXISTS `hist_adgroup_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_adgroup_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `adwords_id` varchar(255) DEFAULT NULL,
  `adgroup_name` varchar(255) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `campaign_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `avgcpc` int(11) DEFAULT NULL,
  `pagessession` float DEFAULT NULL,
  `avgsessiondurationseconds` int(11) DEFAULT NULL,
  `bouncerate` float DEFAULT NULL,
  `clickconversionrate` float DEFAULT NULL,
  `clicks` int(11) DEFAULT NULL,
  `conversions` float DEFAULT NULL,
  `convertedclicks` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `costconvertedclick` int(11) DEFAULT NULL,
  `defaultmaxcpc` int(11) DEFAULT NULL,
  `ctr` float DEFAULT NULL,
  `impressions` int(11) DEFAULT NULL,
  `newsessions` float DEFAULT NULL,
  `targetcpa` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `dfp_id` varchar(255) DEFAULT NULL,
  `paid_afc_revenue` float DEFAULT '0',
  `paused_at` date DEFAULT NULL,
  `conversionrate` float DEFAULT NULL,
  `costperconversion` int(11) DEFAULT '0',
  `afc_revenue` float DEFAULT NULL,
  `afg_revenue` float DEFAULT NULL,
  `afv_revenue` float DEFAULT NULL,
  `other_revenue` float DEFAULT NULL,
  `adx_revenue` float DEFAULT NULL,
  `paid_afg_revenue` float DEFAULT NULL,
  `paid_afv_revenue` float DEFAULT NULL,
  `paid_other_revenue` float DEFAULT NULL,
  `paid_adx_revenue` float DEFAULT NULL,
  `paid_vooxe_revenue` float DEFAULT NULL,
  `paid_prebid_revenue` float DEFAULT NULL,
  `vooxe_revenue` float DEFAULT NULL,
  `prebid_revenue` float DEFAULT NULL,
  `paid_dfp_impressions` int(11) DEFAULT NULL,
  `organic_dfp_impressions` int(11) DEFAULT NULL,
  `paid_dfp_clicks` int(11) DEFAULT NULL,
  `organic_dfp_clicks` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_index_adgroups_stats` (`adwords_id`,`date`,`account`)
) ENGINE=InnoDB AUTO_INCREMENT=1353568 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_adgroup_stats_backup`
--

DROP TABLE IF EXISTS `hist_adgroup_stats_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_adgroup_stats_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `adwords_id` varchar(255) DEFAULT NULL,
  `adgroup_name` varchar(255) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `campaign_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `avgcpc` int(11) DEFAULT NULL,
  `pagessession` float DEFAULT NULL,
  `avgsessiondurationseconds` int(11) DEFAULT NULL,
  `bouncerate` float DEFAULT NULL,
  `clickconversionrate` float DEFAULT NULL,
  `clicks` int(11) DEFAULT NULL,
  `conversions` float DEFAULT NULL,
  `convertedclicks` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `costconvertedclick` int(11) DEFAULT NULL,
  `defaultmaxcpc` int(11) DEFAULT NULL,
  `ctr` float DEFAULT NULL,
  `impressions` int(11) DEFAULT NULL,
  `newsessions` float DEFAULT NULL,
  `targetcpa` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `dfp_id` varchar(255) DEFAULT NULL,
  `paid_afc_revenue` float DEFAULT '0',
  `paused_at` date DEFAULT NULL,
  `conversionrate` float DEFAULT NULL,
  `costperconversion` int(11) DEFAULT '0',
  `afc_revenue` float DEFAULT NULL,
  `afg_revenue` float DEFAULT NULL,
  `afv_revenue` float DEFAULT NULL,
  `other_revenue` float DEFAULT NULL,
  `adx_revenue` float DEFAULT NULL,
  `paid_afg_revenue` float DEFAULT NULL,
  `paid_afv_revenue` float DEFAULT NULL,
  `paid_other_revenue` float DEFAULT NULL,
  `paid_adx_revenue` float DEFAULT NULL,
  `paid_vooxe_revenue` float DEFAULT NULL,
  `paid_prebid_revenue` float DEFAULT NULL,
  `vooxe_revenue` float DEFAULT NULL,
  `prebid_revenue` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1499159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_adx_rules_performance_stats`
--

DROP TABLE IF EXISTS `hist_adx_rules_performance_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_adx_rules_performance_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `rule_name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `inventory_size` varchar(255) NOT NULL,
  `total_ad_requests` int(11) DEFAULT NULL,
  `unmatched_ad_requests` int(11) DEFAULT NULL,
  `branded_ad_impressions` int(11) DEFAULT NULL,
  `anonymous_ad_impressions` int(11) DEFAULT NULL,
  `branded_eCPM` float DEFAULT NULL,
  `anonymous_eCPM` float DEFAULT NULL,
  `estimated_revenue_branded` float DEFAULT NULL,
  `estimated_revenue_anonymous` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_hist_adx_rules_performance_stats` (`date`,`rule_name`,`country`,`inventory_size`),
  KEY `date_idx` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=85714 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_cohort_stats`
--

DROP TABLE IF EXISTS `hist_cohort_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_cohort_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cohort_date` date NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `revenue` float DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_hist_cohort_stats_on_cohort_date` (`cohort_date`),
  KEY `index_hist_cohort_stats_on_cohort_date_and_channel` (`cohort_date`,`channel`)
) ENGINE=InnoDB AUTO_INCREMENT=366790 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_collection_items_efficiency`
--

DROP TABLE IF EXISTS `hist_collection_items_efficiency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_collection_items_efficiency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `efficiency` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_hist_collection_items_efficiency_on_item_id_and_page` (`item_id`,`page`)
) ENGINE=InnoDB AUTO_INCREMENT=7571264 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_contextual_stats`
--

DROP TABLE IF EXISTS `hist_contextual_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_contextual_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `object_type` varchar(255) NOT NULL,
  `object_id` int(11) NOT NULL,
  `page` int(11) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `clicks` int(11) DEFAULT '0',
  `game_id` int(11) DEFAULT NULL,
  `total_play_time` int(11) DEFAULT NULL,
  `playtime_count` int(11) DEFAULT '0',
  `game_retention` int(11) DEFAULT NULL,
  `efficiency` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_index_hist_contextual_stats` (`group_id`,`date`,`object_id`,`object_type`,`page`),
  KEY `game_id_idx` (`game_id`),
  KEY `idx_date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=90262138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_cycle_stats`
--

DROP TABLE IF EXISTS `hist_cycle_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_cycle_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `cycle_number` int(11) NOT NULL,
  `date` date NOT NULL,
  `cycles_count` int(11) DEFAULT '0',
  `coins_spent` int(11) DEFAULT '0',
  `coins_dispensed_achievements` int(11) DEFAULT '0',
  `coins_dispensed_scores` int(11) DEFAULT '0',
  `items_purchased` int(11) DEFAULT '0',
  `money_earned` int(11) DEFAULT '0',
  `accumulated_play_time` int(11) DEFAULT '0',
  `accumulated_score` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_cycle_data` (`game_id`,`group_id`,`cycle_number`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_game_stats`
--

DROP TABLE IF EXISTS `hist_game_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_game_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` smallint(5) unsigned NOT NULL,
  `date` date NOT NULL,
  `group_id` smallint(25) NOT NULL,
  `signups` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `accumulated_play_time` int(11) NOT NULL DEFAULT '0',
  `coins_purchased` int(11) NOT NULL DEFAULT '0',
  `coins_dispensed_team_bonus` int(11) NOT NULL DEFAULT '0',
  `coins_dispensed_achievements` int(11) NOT NULL DEFAULT '0',
  `coins_dispensed_scores` int(11) NOT NULL DEFAULT '0',
  `items_purchased` int(11) NOT NULL DEFAULT '0',
  `coins_spent` int(11) NOT NULL DEFAULT '0',
  `experience_awarded_scores` int(11) NOT NULL DEFAULT '0',
  `experience_awarded_achievements` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `end_cycle` int(11) DEFAULT '0',
  `get_configuration` int(11) DEFAULT '0',
  `unlock_achievement` int(11) DEFAULT '0',
  `persist_data` int(11) DEFAULT '0',
  `refresh_user_data` int(11) DEFAULT '0',
  `purchase_item` int(11) DEFAULT '0',
  `accumulated_score` bigint(20) DEFAULT '0',
  `money_earned` int(11) DEFAULT '0',
  `cycles_count` int(11) DEFAULT '0',
  `unique_players` int(11) DEFAULT '0',
  `kizi_standalone_signups` int(11) DEFAULT '0',
  `fb_connects` int(11) DEFAULT '0',
  `plays_count` int(11) DEFAULT '0',
  `total_impressions` int(11) DEFAULT '0',
  `catalog_plays` int(11) DEFAULT '0',
  `similar_game_plays` int(11) DEFAULT '0',
  `organic_plays` int(11) DEFAULT '0',
  `game_retention` int(11) DEFAULT '0',
  `invites` int(11) DEFAULT '0',
  `quality_score_global` float DEFAULT '0',
  `internal_search_plays` int(11) DEFAULT '0',
  `playtime_count` int(11) DEFAULT '0',
  `challenges_sent` int(11) DEFAULT '0',
  `challenges_accepted` int(11) DEFAULT '0',
  `challenges_declined` int(11) DEFAULT '0',
  `gifts_sent` int(11) DEFAULT '0',
  `gifts_accepted` int(11) DEFAULT '0',
  `friend_requests_sent_from_search` int(11) DEFAULT '0',
  `friend_requests_sent_from_suggested` int(11) DEFAULT '0',
  `friend_requests_accepted` int(11) DEFAULT '0',
  `friend_requests_declined` int(11) DEFAULT '0',
  `ad_impressions` int(11) DEFAULT '0',
  `video_impressions` int(11) DEFAULT '0',
  `plays_count_new_users` int(11) DEFAULT '0',
  `liked_games` int(11) DEFAULT '0',
  `liked_games_clicked` int(11) DEFAULT '0',
  `liked_game_notifications_sent` int(11) DEFAULT '0',
  `disliked_games` int(11) DEFAULT '0',
  `total_cpm` float DEFAULT '0',
  `profile_game_plays` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `game_id_date_group_id` (`game_id`,`date`,`group_id`),
  KEY `date_group_id` (`date`,`group_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11817231 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_global_stats`
--

DROP TABLE IF EXISTS `hist_global_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_global_stats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `group_id` smallint(25) NOT NULL,
  `signups` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `referral_conversions` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `active_users` int(11) NOT NULL DEFAULT '0',
  `items_purchased` int(11) NOT NULL DEFAULT '0',
  `coins_purchased` int(11) NOT NULL DEFAULT '0',
  `coins_spent` bigint(11) unsigned NOT NULL DEFAULT '0',
  `coins_dispensed_levels` bigint(11) unsigned DEFAULT '0',
  `accumulated_play_time` bigint(11) unsigned DEFAULT '0',
  `coins_dispensed_scores` bigint(11) unsigned DEFAULT '0',
  `coins_dispensed_achievements` int(11) DEFAULT '0',
  `coins_dispensed_team_bonus` int(11) DEFAULT '0',
  `coins_dispensed_daily_bonus` int(11) DEFAULT '0',
  `coins_dispensed_referrals` int(11) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `coins_dispensed_fb_publish` int(11) DEFAULT '0',
  `money_received` int(11) DEFAULT NULL,
  `coins_dispensed_fb_connect` int(11) DEFAULT '0',
  `money_earned` int(11) DEFAULT '0',
  `cycles_count` int(11) DEFAULT '0',
  `unique_players` int(11) DEFAULT '0',
  `coins_dispensed_initial_amount` bigint(11) unsigned DEFAULT '0',
  `coins_dispensed_friends_bonus` int(11) DEFAULT '0',
  `kizi_standalone_signups` int(11) DEFAULT '0',
  `fb_connects` int(11) DEFAULT '0',
  `coins_dispensed_standalone_signup` bigint(11) unsigned DEFAULT '0',
  `plays_count` int(11) DEFAULT '0',
  `invites` int(11) DEFAULT '0',
  `logins` int(11) DEFAULT '0',
  `fb_logins` int(11) DEFAULT '0',
  `login_attempts` int(11) DEFAULT '0',
  `playtime_count` int(11) DEFAULT '0',
  `challenges_sent` int(11) DEFAULT '0',
  `challenges_accepted` int(11) DEFAULT '0',
  `challenges_declined` int(11) DEFAULT '0',
  `gifts_sent` int(11) DEFAULT '0',
  `gifts_accepted` int(11) DEFAULT '0',
  `friend_requests_sent_from_search` int(11) DEFAULT '0',
  `friend_requests_sent_from_suggested` int(11) DEFAULT '0',
  `friend_requests_accepted` int(11) DEFAULT '0',
  `friend_requests_declined` int(11) DEFAULT '0',
  `ad_impressions` int(11) DEFAULT '0',
  `video_impressions` int(11) DEFAULT '0',
  `plays_count_new_users` int(11) DEFAULT '0',
  `visits_paid` int(11) DEFAULT '0',
  `visits_search` int(11) DEFAULT '0',
  `visits_organic` int(11) DEFAULT '0',
  `visits_other` int(11) DEFAULT '0',
  `friends_added_from_facebook` int(11) DEFAULT '0',
  `coins_dispensed_gifts` int(11) DEFAULT '0',
  `coins_dispensed_friendships` int(11) DEFAULT '0',
  `challenge_won_by_challenger` int(11) DEFAULT '0',
  `challenge_won_by_challengee` int(11) DEFAULT '0',
  `avatar_likes` int(11) DEFAULT '0',
  `facebook_avatar_shares` int(11) DEFAULT '0',
  `video_attempts` int(11) DEFAULT '0',
  `liked_games` int(11) DEFAULT '0',
  `liked_games_clicked` int(11) DEFAULT '0',
  `consecutive_one_day` int(11) DEFAULT '0',
  `consecutive_two_days` int(11) DEFAULT '0',
  `consecutive_three_days` int(11) DEFAULT '0',
  `liked_game_notifications_sent` int(11) DEFAULT '0',
  `logouts` int(11) DEFAULT '0',
  `unfriend` int(11) DEFAULT '0',
  `friend_requests_sent_from_profile` int(11) DEFAULT '0',
  `disliked_games` int(11) DEFAULT '0',
  `video_plays_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `date_group_id` (`date`,`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81527 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_hourly_ad_stats`
--

DROP TABLE IF EXISTS `hist_hourly_ad_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_hourly_ad_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `hour` int(11) NOT NULL,
  `cost` float DEFAULT '0',
  `revenue` float DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `dfp_impressions` int(11) DEFAULT NULL,
  `dfp_clicks` int(11) DEFAULT NULL,
  `dfp_ctr` float DEFAULT NULL,
  `dfp_ecpm` float DEFAULT NULL,
  `adwords_impressions` int(11) DEFAULT NULL,
  `adwords_clicks` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_hist_hourly_ad_stats_on_date_and_channel` (`date`,`channel`)
) ENGINE=InnoDB AUTO_INCREMENT=321957 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_hourly_conversion_rates`
--

DROP TABLE IF EXISTS `hist_hourly_conversion_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_hourly_conversion_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `hour` smallint(6) NOT NULL,
  `one_per_click_conv_rate` float NOT NULL,
  `many_per_click_conv_rate` float NOT NULL,
  `ctr` float NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_hist_hourly_conversion_rates_on_date_and_hour` (`date`,`hour`)
) ENGINE=InnoDB AUTO_INCREMENT=15418 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_item_stats`
--

DROP TABLE IF EXISTS `hist_item_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_item_stats` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `store_item_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `group_id` smallint(6) NOT NULL DEFAULT '0',
  `purchases` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `coins_spent` int(11) DEFAULT '0',
  `money_earned` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `store_item_id_date_group_id` (`store_item_id`,`date`,`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11046155 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hist_missing_partners_stats`
--

DROP TABLE IF EXISTS `hist_missing_partners_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_missing_partners_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `params` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inventory_items`
--

DROP TABLE IF EXISTS `inventory_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `store_item_id` int(11) NOT NULL,
  `amount` int(6) NOT NULL DEFAULT '0',
  `amount_purchased` int(6) DEFAULT '0',
  `last_sync_id` int(11) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_unique_inventory_items_on_user_id_and_store_item_id` (`user_id`,`store_item_id`),
  KEY `index_inventory_items_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `level_ratings`
--

DROP TABLE IF EXISTS `level_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `money_accounts`
--

DROP TABLE IF EXISTS `money_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `balance` int(11) DEFAULT '0',
  `owner_id` int(11) DEFAULT NULL,
  `owner_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_money_accounts_on_owner_type` (`owner_type`),
  KEY `index_money_accounts_on_owner_id_and_owner_type` (`owner_id`,`owner_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5033473 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `money_transactions`
--

DROP TABLE IF EXISTS `money_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `custom_data` text,
  `daily_closing_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4190315 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `money_transfers`
--

DROP TABLE IF EXISTS `money_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money_account_id` int(11) NOT NULL,
  `money_transaction_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `transfer_type` varchar(255) DEFAULT NULL,
  `custom_data` text,
  `transfer_origin` varchar(255) DEFAULT NULL,
  `daily_closing_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_money_transaction_id` (`money_transaction_id`),
  KEY `type_account_id_date` (`transfer_type`,`money_account_id`,`daily_closing_date`)
) ENGINE=InnoDB AUTO_INCREMENT=7898600 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2532 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` int(11) DEFAULT NULL,
  `from` int(11) DEFAULT NULL,
  `notification_type` int(11) DEFAULT NULL,
  `obj_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_notifications_on_to` (`to`),
  KEY `index_notifications_on_from` (`from`),
  KEY `index_notifications_on_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=297165001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_providers`
--

DROP TABLE IF EXISTS `payment_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `money_account_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_records`
--

DROP TABLE IF EXISTS `payment_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `provider_reference_id` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `related_transaction_id` int(11) DEFAULT NULL,
  `payment_record_id` int(11) DEFAULT NULL,
  `net_amount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_payment_records_on_user_id` (`user_id`),
  KEY `index_payment_records_on_provider_reference_id` (`provider_reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4543875 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ratings_on_user_id` (`user_id`),
  KEY `ratings_game_id_user_id_index` (`user_id`,`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25574013 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_auth_token` varchar(255) DEFAULT NULL,
  `weekly_cumulative_score` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_scores_on_user_id_and_board_id` (`user_id`,`board_id`),
  UNIQUE KEY `auth_token_board_id_index` (`user_auth_token`,`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=162977649 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `similar_game_stats`
--

DROP TABLE IF EXISTS `similar_game_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `similar_game_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL,
  `similar_game_id` int(11) DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT '0',
  `impressions` int(11) DEFAULT '2',
  `clicks` int(11) DEFAULT '2',
  `ctr` float DEFAULT '1',
  `total_play_time` float DEFAULT '0',
  `efficiency` float DEFAULT '0',
  `active_from` datetime DEFAULT NULL,
  `alt_impressions` int(11) DEFAULT '5',
  `alt_clicks` int(11) DEFAULT '5',
  `alt_ctr` float DEFAULT '1',
  `html5_impressions` int(11) DEFAULT '5',
  `html5_clicks` int(11) DEFAULT '5',
  `html5_ctr` float DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_game_id_similar_game_id` (`game_id`,`similar_game_id`),
  KEY `index_similar_game_stats_on_similar_game_id` (`similar_game_id`),
  KEY `index_similar_game_stats_on_game_id` (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17834318 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats_groups`
--

DROP TABLE IF EXISTS `stats_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stats_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `random` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `capacity` mediumint(9) DEFAULT NULL,
  `members` mediumint(9) DEFAULT NULL,
  `obj_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `obj_id` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `is_static` tinyint(1) DEFAULT '0',
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1380 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stop_clean_follows`
--

DROP TABLE IF EXISTS `stop_clean_follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stop_clean_follows` (
  `should_stop` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `store_item_levels`
--

DROP TABLE IF EXISTS `store_item_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_item_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upgradable_store_item_id` int(11) DEFAULT NULL,
  `price` mediumint(6) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2093 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `store_items`
--

DROP TABLE IF EXISTS `store_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `bundle_size` smallint(9) NOT NULL DEFAULT '1',
  `price` mediumint(9) unsigned DEFAULT '1',
  `max_amount` smallint(9) NOT NULL DEFAULT '1',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2046 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `store_purchase_log`
--

DROP TABLE IF EXISTS `store_purchase_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_purchase_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `store_item_id` int(11) NOT NULL,
  `level` smallint(2) NOT NULL,
  `amount` mediumint(6) NOT NULL,
  `auth_token` varchar(50) NOT NULL,
  `price` mediumint(6) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `money_transaction_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `survey_answers`
--

DROP TABLE IF EXISTS `survey_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `survey_question_id` int(11) DEFAULT NULL,
  `survey_id` varchar(255) DEFAULT NULL,
  `survey_answer_id` varchar(255) DEFAULT NULL,
  `completion_id` varchar(255) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1353256 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `survey_possible_answers`
--

DROP TABLE IF EXISTS `survey_possible_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_possible_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `survey_id` varchar(255) DEFAULT NULL,
  `next_question_id` int(11) DEFAULT NULL,
  `survey_question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `survey_questions`
--

DROP TABLE IF EXISTS `survey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `survey_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `first_question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `system_variables`
--

DROP TABLE IF EXISTS `system_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_variables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tag_types`
--

DROP TABLE IF EXISTS `tag_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_followers`
--

DROP TABLE IF EXISTS `temp_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_followers` (
  `follower_id` int(11) DEFAULT NULL,
  `followed_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_ordering`
--

DROP TABLE IF EXISTS `temp_ordering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_ordering` (
  `collection_id` int(10) DEFAULT NULL,
  `clicks_share` float DEFAULT NULL,
  `sr_ctr` float DEFAULT NULL,
  `gr_ctr` float DEFAULT NULL,
  `site_retention_score` float DEFAULT NULL,
  `game_retention_score` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_game_states`
--

DROP TABLE IF EXISTS `user_game_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_game_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_auth_token` varchar(255) NOT NULL,
  `last_sync_id` int(11) NOT NULL DEFAULT '0',
  `game_id` int(11) NOT NULL,
  `data` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_auth_token_game_id` (`user_auth_token`,`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150861147 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_survey_records`
--

DROP TABLE IF EXISTS `user_survey_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_survey_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` varchar(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50946 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) DEFAULT NULL,
  `permalink` varchar(100) DEFAULT NULL,
  `experience` mediumint(9) NOT NULL DEFAULT '0',
  `auth_token` varchar(32) DEFAULT NULL,
  `coins` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `crypted_password` varchar(128) NOT NULL DEFAULT '',
  `salt` varchar(255) DEFAULT NULL,
  `authentication_token` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fb_id` bigint(20) DEFAULT NULL,
  `user_type` tinyint(2) DEFAULT '1',
  `fb_token` varchar(255) DEFAULT NULL,
  `last_visit_date` datetime DEFAULT '2000-01-01 00:00:00',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `remember_me_token` varchar(20) DEFAULT NULL,
  `remember_me_token_expires_at` datetime DEFAULT NULL,
  `reset_password_token` varchar(20) DEFAULT NULL,
  `reset_password_token_expires_at` datetime DEFAULT NULL,
  `reset_password_email_sent_at` datetime DEFAULT NULL,
  `money_account_id` int(11) DEFAULT NULL,
  `is_banned` tinyint(1) DEFAULT '0',
  `gender` varchar(6) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT '1',
  `misc_properties` text,
  `is_active` tinyint(1) DEFAULT '0',
  `fullbody_image_file_name` varchar(30) DEFAULT NULL,
  `fullbody_image_file_size` int(11) DEFAULT NULL,
  `fullbody_image_updated_at` datetime DEFAULT NULL,
  `face_image_file_name` varchar(30) DEFAULT NULL,
  `face_image_file_size` int(11) DEFAULT NULL,
  `face_image_updated_at` datetime DEFAULT NULL,
  `avatar_definition` text,
  `signup_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_users_auth_token` (`auth_token`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_fb_id` (`fb_id`),
  UNIQUE KEY `login` (`login`),
  KEY `permalink` (`permalink`),
  KEY `index_users_on_remember_me_token` (`remember_me_token`),
  KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_on_is_guest` (`is_guest`)
) ENGINE=InnoDB AUTO_INCREMENT=137579755 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `video_channels`
--

DROP TABLE IF EXISTS `video_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `thumb_file_name` varchar(255) DEFAULT NULL,
  `thumb_content_type` varchar(255) DEFAULT NULL,
  `thumb_file_size` int(11) DEFAULT NULL,
  `thumb_updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` text,
  `avatar_thumb_file_name` varchar(255) DEFAULT NULL,
  `avatar_thumb_content_type` varchar(255) DEFAULT NULL,
  `avatar_thumb_file_size` int(11) DEFAULT NULL,
  `avatar_thumb_updated_at` datetime DEFAULT NULL,
  `cover_img_file_name` varchar(255) DEFAULT NULL,
  `cover_img_content_type` varchar(255) DEFAULT NULL,
  `cover_img_file_size` int(11) DEFAULT NULL,
  `cover_img_updated_at` datetime DEFAULT NULL,
  `background_color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `video_collection_items`
--

DROP TABLE IF EXISTS `video_collection_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_collection_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '10000',
  `is_visible` tinyint(1) DEFAULT '0',
  `impressions` int(11) DEFAULT '2',
  `clicks` int(11) DEFAULT '2',
  `ctr` float DEFAULT '1',
  `total_view_time` float DEFAULT '0',
  `efficiency` float DEFAULT '0',
  `promotions_counter` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `video_per_game_items`
--

DROP TABLE IF EXISTS `video_per_game_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_per_game_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_video_per_game_items_on_video_id_and_game_id` (`video_id`,`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `video_ratings`
--

DROP TABLE IF EXISTS `video_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_video_ratings_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=807388 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `video_similar_stats`
--

DROP TABLE IF EXISTS `video_similar_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_similar_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) DEFAULT NULL,
  `similar_video_id` int(11) DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT '0',
  `impressions` int(11) DEFAULT '2',
  `clicks` int(11) DEFAULT '2',
  `ctr` float DEFAULT '1',
  `total_view_time` float DEFAULT '0',
  `efficiency` float DEFAULT '0',
  `active_from` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_video_similar_stats_on_video_id` (`video_id`),
  KEY `index_video_similar_stats_on_similar_video_id` (`similar_video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26274191 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `video_similar_stats_bck`
--

DROP TABLE IF EXISTS `video_similar_stats_bck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_similar_stats_bck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) DEFAULT NULL,
  `similar_video_id` int(11) DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT '0',
  `impressions` int(11) DEFAULT '2',
  `clicks` int(11) DEFAULT '2',
  `ctr` float DEFAULT '1',
  `total_view_time` float DEFAULT '0',
  `efficiency` float DEFAULT '0',
  `active_from` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_video_similar_stats_on_video_id` (`video_id`),
  KEY `index_video_similar_stats_on_similar_video_id` (`similar_video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=293653 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `video_tag_items`
--

DROP TABLE IF EXISTS `video_tag_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_tag_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_tag_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) NOT NULL DEFAULT '10000',
  `position_b` int(11) NOT NULL DEFAULT '10000',
  `position_d` int(11) NOT NULL DEFAULT '10000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16724 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `video_tags`
--

DROP TABLE IF EXISTS `video_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `thumb_file_name` varchar(255) DEFAULT NULL,
  `thumb_content_type` varchar(255) DEFAULT NULL,
  `thumb_file_size` int(11) DEFAULT NULL,
  `thumb_updated_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT '10000',
  `show_in_navigation` tinyint(1) DEFAULT '0',
  `tag_type` int(11) DEFAULT '1',
  `is_walkthrough` tinyint(1) DEFAULT '0',
  `description` text,
  `is_visible` tinyint(1) DEFAULT '1',
  `big_thumb_file_name` varchar(255) DEFAULT NULL,
  `big_thumb_content_type` varchar(255) DEFAULT NULL,
  `big_thumb_file_size` int(11) DEFAULT NULL,
  `big_thumb_updated_at` datetime DEFAULT NULL,
  `regular_thumb_file_name` varchar(255) DEFAULT NULL,
  `regular_thumb_content_type` varchar(255) DEFAULT NULL,
  `regular_thumb_file_size` int(11) DEFAULT NULL,
  `regular_thumb_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_video_tags_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `video_embed_code` text,
  `version` int(11) DEFAULT '0',
  `preroll_behavior` int(11) DEFAULT '2',
  `is_visible` tinyint(1) DEFAULT '0',
  `is_child_directed` tinyint(1) DEFAULT NULL,
  `visible_in_countries` varchar(255) DEFAULT NULL,
  `invisible_in_countries` varchar(255) DEFAULT NULL,
  `release_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `thumb_file_name` varchar(255) DEFAULT NULL,
  `thumb_content_type` varchar(255) DEFAULT NULL,
  `thumb_file_size` int(11) DEFAULT NULL,
  `thumb_updated_at` datetime DEFAULT NULL,
  `video_file_name` varchar(255) DEFAULT NULL,
  `video_content_type` varchar(255) DEFAULT NULL,
  `video_file_size` int(11) DEFAULT NULL,
  `video_updated_at` datetime DEFAULT NULL,
  `thumbs_up` int(11) DEFAULT '0',
  `thumbs_down` int(11) DEFAULT '0',
  `hide_logo` tinyint(1) DEFAULT '0',
  `homepage_thumb_file_name` varchar(255) DEFAULT NULL,
  `splash_image_file_name` varchar(255) DEFAULT NULL,
  `splash_image_content_type` varchar(255) DEFAULT NULL,
  `splash_image_file_size` int(11) DEFAULT NULL,
  `splash_image_updated_at` datetime DEFAULT NULL,
  `homepage_thumb_content_type` varchar(255) DEFAULT NULL,
  `homepage_thumb_file_size` int(11) DEFAULT NULL,
  `homepage_thumb_updated_at` datetime DEFAULT NULL,
  `video_channel_id` int(11) DEFAULT NULL,
  `homepage_thumb_position` int(11) DEFAULT NULL,
  `series_thumb_position` int(11) DEFAULT NULL,
  `homepage_thumb_title` varchar(255) DEFAULT NULL,
  `on_video_complete_link` varchar(255) DEFAULT NULL,
  `HP_thumb_links_to_channel` tinyint(1) NOT NULL DEFAULT '0',
  `vtt_file_name` varchar(255) DEFAULT NULL,
  `vtt_content_type` varchar(255) DEFAULT NULL,
  `vtt_file_size` int(11) DEFAULT NULL,
  `vtt_updated_at` datetime DEFAULT NULL,
  `hd_file_file_name` varchar(255) DEFAULT NULL,
  `hd_file_content_type` varchar(255) DEFAULT NULL,
  `hd_file_file_size` int(11) DEFAULT NULL,
  `hd_file_updated_at` datetime DEFAULT NULL,
  `mp4_format_file_name` varchar(255) DEFAULT NULL,
  `mp4_format_content_type` varchar(255) DEFAULT NULL,
  `mp4_format_file_size` int(11) DEFAULT NULL,
  `mp4_format_updated_at` datetime DEFAULT NULL,
  `webm_format_file_name` varchar(255) DEFAULT NULL,
  `webm_format_content_type` varchar(255) DEFAULT NULL,
  `webm_format_file_size` int(11) DEFAULT NULL,
  `webm_format_updated_at` datetime DEFAULT NULL,
  `content_tag` varchar(255) DEFAULT NULL,
  `video_duration` int(11) DEFAULT NULL,
  `custom_keywords` varchar(255) DEFAULT NULL,
  `custom_title` varchar(255) DEFAULT NULL,
  `marketing_tag` int(11) DEFAULT NULL,
  `series_order` int(11) DEFAULT NULL,
  `bg_thumb_color` varchar(255) DEFAULT NULL,
  `games_tile_thumb_file_name` varchar(255) DEFAULT NULL,
  `games_tile_thumb_content_type` varchar(255) DEFAULT NULL,
  `games_tile_thumb_file_size` int(11) DEFAULT NULL,
  `games_tile_thumb_updated_at` datetime DEFAULT NULL,
  `is_scrapped` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7370 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `walkthroughs`
--

DROP TABLE IF EXISTS `walkthroughs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walkthroughs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` text,
  `game_id` int(11) DEFAULT NULL,
  `walkthrough_order` int(11) DEFAULT NULL,
  `hide_logo` tinyint(1) DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-05  9:32:53
