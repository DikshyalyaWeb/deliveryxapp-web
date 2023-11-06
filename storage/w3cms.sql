-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2023 at 03:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `w3cms_installation`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `comment` tinyint(4) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 => Published, 2 => Draft, 3 => Trash, 4 => Private, 5 => Pending',
  `post_type` varchar(255) NOT NULL DEFAULT 'blog',
  `visibility` enum('Pu','PP','Pr') NOT NULL COMMENT 'Pu => Public, PP => Password Protected, Pr => Private',
  `publish_on` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `slug`, `content`, `excerpt`, `comment`, `password`, `status`, `post_type`, `visibility`, `publish_on`, `created_at`, `updated_at`) VALUES
(38, 1, 'What You Can Learn From Mistakes', 'what-you-can-learn-from-mistakes', '<div class=\"dz-post-text\">\r\n<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n\r\n<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n\r\n<blockquote>\r\n<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n<cite>William Son </cite></blockquote>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n\r\n<ul class=\"m-b30\">\r\n	<li>A wonderful serenity has taken possession.</li>\r\n	<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n	<li>I enjoy with my whole heart.</li>\r\n	<li>This spot, which was created For the bliss of souls like mine.</li>\r\n</ul>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n</div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 1, '123456', 1, 'blog', 'Pu', '2022-08-31 00:00:00', '2023-08-04 08:12:41', '2023-08-04 08:12:41'),
(39, 1, 'Why Successful People Plan Their Days Before', 'why-successful-people-plan-their-days-before', '<div class=\"dz-post-text\">\r\n<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n\r\n<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n\r\n<blockquote>\r\n<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n<cite>William Son </cite></blockquote>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n\r\n<ul class=\"m-b30\">\r\n	<li>A wonderful serenity has taken possession.</li>\r\n	<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n	<li>I enjoy with my whole heart.</li>\r\n	<li>This spot, which was created For the bliss of souls like mine.</li>\r\n</ul>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n</div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 1, NULL, 1, 'blog', 'Pu', '2022-10-31 00:00:00', '2023-08-04 08:12:41', '2023-08-04 08:12:41'),
(40, 1, 'Everything You Need To Know About SEO', 'everything-you-need-to-know-about-seo', '<div class=\"dz-post-text\">\r\n<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n\r\n<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n\r\n<blockquote>\r\n<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n<cite>William Son </cite></blockquote>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n\r\n<ul class=\"m-b30\">\r\n	<li>A wonderful serenity has taken possession.</li>\r\n	<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n	<li>I enjoy with my whole heart.</li>\r\n	<li>This spot, which was created For the bliss of souls like mine.</li>\r\n</ul>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n</div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 1, NULL, 1, 'blog', 'Pu', '2022-10-31 00:00:00', '2023-08-04 08:12:42', '2023-08-04 08:12:42'),
(41, 1, 'Why Everyone Loves Competition For today Business', 'everyone-loves-competition', '<div class=\"dz-post-text\">\r\n									<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n									<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n									<blockquote>\r\n										<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n										<cite> William Son </cite>\r\n									</blockquote>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n									<ul class=\"m-b30\">\r\n										<li>A wonderful serenity has taken possession.</li>\r\n										<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n										<li>I enjoy with my whole heart.</li>\r\n										<li>This spot, which was created For the bliss of souls like mine.</li>\r\n									</ul>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n								</div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', NULL, NULL, 1, 'blog', 'Pu', '2022-12-19 00:00:00', '2023-08-04 08:12:43', '2023-08-04 08:12:43'),
(42, 1, 'Photographic Tools That Made My Job Easier', 'two-photographic-tools-that-have-made-my-job-way-easier', '<div class=\"dz-post-text\">\r\n									<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n									<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n									<blockquote>\r\n										<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n										<cite> William Son </cite>\r\n									</blockquote>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n									<ul class=\"m-b30\">\r\n										<li>A wonderful serenity has taken possession.</li>\r\n										<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n										<li>I enjoy with my whole heart.</li>\r\n										<li>This spot, which was created For the bliss of souls like mine.</li>\r\n									</ul>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n								</div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', NULL, NULL, 1, 'blog', 'Pu', '2022-11-19 00:00:00', '2023-08-04 08:12:43', '2023-08-04 08:12:43'),
(43, 1, '9 Resume Mistakes That Might Cost You a Job', '9-resume-mistakes-that-might-cost-you-a-job', '<div class=\"dz-post-text\">\r\n<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n\r\n<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n\r\n<blockquote>\r\n<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n<cite>William Son </cite></blockquote>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n\r\n<ul class=\"m-b30\">\r\n	<li>A wonderful serenity has taken possession.</li>\r\n	<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n	<li>I enjoy with my whole heart.</li>\r\n	<li>This spot, which was created For the bliss of souls like mine.</li>\r\n</ul>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n</div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', NULL, NULL, 1, 'blog', 'Pu', '2022-10-19 00:00:00', '2023-08-04 08:12:44', '2023-08-04 08:12:44'),
(44, 1, 'The Best Ways to grow More in Less Time', 'the-best-ways-to-grow-more-in-less-time', '<div class=\"dz-post-text\">\r\n									<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n									<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n									<blockquote>\r\n										<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n										<cite> William Son </cite>\r\n									</blockquote>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n									<ul class=\"m-b30\">\r\n										<li>A wonderful serenity has taken possession.</li>\r\n										<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n										<li>I enjoy with my whole heart.</li>\r\n										<li>This spot, which was created For the bliss of souls like mine.</li>\r\n									</ul>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n								</div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', NULL, NULL, 1, 'blog', 'Pu', '2022-09-19 00:00:00', '2023-08-04 08:12:44', '2023-08-04 08:12:44'),
(45, 1, 'Let Me List Them Out For You', 'let-me-list-them-out-for-you', '<div class=\"dz-post-text\">\r\n									<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n									<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n									<blockquote>\r\n										<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n										<cite> William Son </cite>\r\n									</blockquote>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n									<ul class=\"m-b30\">\r\n										<li>A wonderful serenity has taken possession.</li>\r\n										<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n										<li>I enjoy with my whole heart.</li>\r\n										<li>This spot, which was created For the bliss of souls like mine.</li>\r\n									</ul>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n								</div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', NULL, NULL, 1, 'blog', 'Pu', '2022-09-19 00:00:00', '2023-08-04 08:12:45', '2023-08-04 08:12:45'),
(46, 1, 'The Experience Has Taught Me Well', 'the-experience-has-taught-me-well', '<div class=\"dz-post-text\">\r\n<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n\r\n<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n\r\n<blockquote>\r\n<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\nWilliam Son </blockquote>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n\r\n<ul class=\"m-b30\">\r\n	<li>A wonderful serenity has taken possession.</li>\r\n	<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n	<li>I enjoy with my whole heart.</li>\r\n	<li>This spot, which was created For the bliss of souls like mine.</li>\r\n</ul>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n</div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', NULL, NULL, 1, 'blog', 'Pu', '2022-08-19 00:00:00', '2023-08-04 08:12:46', '2023-08-04 08:12:46'),
(47, 1, 'Why Successful People Wear The Same Thing Every Day', 'why-successful-people-wear-the-same-thing-every-day', '<div class=\"dz-post-text\">\r\n									<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n									<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n									<blockquote>\r\n										<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n										<cite> William Son </cite>\r\n									</blockquote>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n									<ul class=\"m-b30\">\r\n										<li>A wonderful serenity has taken possession.</li>\r\n										<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n										<li>I enjoy with my whole heart.</li>\r\n										<li>This spot, which was created For the bliss of souls like mine.</li>\r\n									</ul>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n								</div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', NULL, NULL, 1, 'blog', 'Pu', '2022-12-21 00:00:00', '2023-08-04 08:12:46', '2023-08-04 08:12:46'),
(48, 1, 'What No One Will Tell You But You Need To Hear About this', 'what-no-one-will-tell-you-but-you-need-to-hear-about-this', '<div class=\"dz-post-text\">\r\n<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n\r\n<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.                   </p>\r\n\r\n<blockquote>                                        \r\n<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n                                         William Son                                     </blockquote>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n\r\n<ul class=\"m-b30\">\r\n	<li>A wonderful serenity has taken possession.</li>\r\n	<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n	<li>I enjoy with my whole heart.</li>\r\n	<li>This spot, which was created For the bliss of souls like mine.                              </li>\r\n</ul>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n                                </div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', NULL, NULL, 1, 'blog', 'Pu', '2022-12-21 00:00:00', '2023-08-04 08:12:46', '2023-08-04 08:12:46'),
(49, 1, 'How To Create The Perfect Thank You Page: An Epic Guide', 'how-to-create-the-perfect-thank-you-page-an-epic-guide', '<div class=\"dz-post-text\">\r\n<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n\r\n<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n\r\n<blockquote>\r\n<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\nWilliam Son</blockquote>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n\r\n<ul class=\"m-b30\">\r\n	<li>A wonderful serenity has taken possession.</li>\r\n	<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n	<li>I enjoy with my whole heart.</li>\r\n	<li>This spot, which was created For the bliss of souls like mine.</li>\r\n</ul>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n</div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', NULL, NULL, 1, 'blog', 'Pu', '2022-12-21 00:00:00', '2023-08-04 08:12:47', '2023-08-04 08:12:47'),
(50, 1, 'Mistakes To Avoid While Writing A Blog Post', 'mistakes-to-avoid-while-writing-a-blog-post', '<div class=\"dz-post-text\">\r\n<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n\r\n<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n\r\n<blockquote>\r\n<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\nWilliam Son</blockquote>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n\r\n<ul class=\"m-b30\">\r\n	<li>A wonderful serenity has taken possession.</li>\r\n	<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n	<li>I enjoy with my whole heart.</li>\r\n	<li>This spot, which was created For the bliss of souls like mine.</li>\r\n</ul>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n</div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 1, NULL, 1, 'blog', 'Pu', '2022-12-21 00:00:00', '2023-08-04 08:12:48', '2023-08-04 08:12:48'),
(51, 1, 'The Best Ways to Do Market Research For Your Business Plan', 'the-best-ways-to-do-market-research-for-your-business-plan', '<div class=\"dz-post-text\">\r\n<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n\r\n<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n\r\n<blockquote>\r\n<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\nWilliam Son </blockquote>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n\r\n<ul class=\"m-b30\">\r\n	<li>A wonderful serenity has taken possession.</li>\r\n	<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n	<li>I enjoy with my whole heart.</li>\r\n	<li>This spot, which was created For the bliss of souls like mine.</li>\r\n</ul>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n</div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', NULL, '123456', 1, 'blog', 'Pu', '2022-12-19 00:00:00', '2023-08-04 08:12:48', '2023-08-04 08:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `blog_blog_categories`
--

CREATE TABLE `blog_blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_blog_categories`
--

INSERT INTO `blog_blog_categories` (`id`, `blog_id`, `blog_category_id`) VALUES
(69, 38, 11),
(70, 38, 12),
(71, 39, 11),
(72, 39, 13),
(73, 39, 14),
(74, 40, 11),
(75, 40, 13),
(76, 40, 14),
(77, 40, 15),
(78, 41, 11),
(79, 41, 13),
(80, 42, 11),
(81, 42, 13),
(82, 42, 15),
(83, 43, 11),
(84, 43, 14),
(85, 43, 15),
(86, 44, 12),
(87, 45, 11),
(88, 45, 12),
(89, 45, 13),
(90, 46, 13),
(91, 46, 14),
(92, 46, 15),
(93, 47, 11),
(94, 47, 13),
(95, 47, 15),
(96, 48, 12),
(97, 48, 14),
(98, 49, 12),
(99, 49, 14),
(100, 50, 12),
(101, 51, 14),
(102, 51, 15);

-- --------------------------------------------------------

--
-- Table structure for table `blog_blog_tags`
--

CREATE TABLE `blog_blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `blog_tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_blog_tags`
--

INSERT INTO `blog_blog_tags` (`id`, `blog_id`, `blog_tag_id`) VALUES
(59, 39, 13),
(60, 39, 14),
(61, 41, 14),
(62, 41, 15),
(63, 41, 16),
(64, 41, 17),
(65, 42, 14),
(66, 42, 15),
(67, 42, 17),
(68, 43, 15),
(69, 43, 17),
(70, 43, 18),
(71, 44, 14),
(72, 44, 15),
(73, 44, 16),
(74, 45, 14),
(75, 45, 16),
(76, 45, 18),
(77, 46, 14),
(78, 46, 15),
(79, 46, 17),
(80, 47, 14),
(81, 47, 15),
(82, 47, 18),
(83, 48, 13),
(84, 48, 17),
(85, 49, 13),
(86, 49, 14),
(87, 49, 16);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `order` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `parent_id`, `user_id`, `title`, `slug`, `image`, `description`, `order`, `created_at`, `updated_at`) VALUES
(11, NULL, 1, 'Nature', 'nature', '1685263307.pic4.jpg', NULL, NULL, '2023-08-04 08:12:41', '2023-08-04 08:12:46'),
(12, NULL, 1, 'Place', 'place', '1685263501.pic5.jpg', NULL, NULL, '2023-08-04 08:12:41', '2023-08-04 08:12:48'),
(13, NULL, 1, 'Beauty', 'beauty', '1685263712.pic3.jpg', 'asdasdd', NULL, '2023-08-04 08:12:42', '2023-08-04 08:12:46'),
(14, 12, 1, 'Sports', 'sports', '1685263563.pic2.jpg', NULL, NULL, '2023-08-04 08:12:42', '2023-08-04 08:12:48'),
(15, NULL, 1, 'Lifestyle', 'lifestyle', '1685263607.pic1.jpg', NULL, NULL, '2023-08-04 08:12:43', '2023-08-04 08:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `blog_metas`
--

CREATE TABLE `blog_metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_metas`
--

INSERT INTO `blog_metas` (`id`, `blog_id`, `title`, `value`, `created_at`, `updated_at`) VALUES
(95, 38, 'ximage', '1680260332_1671449713_pic7.jpg', '2023-08-04 08:12:41', '2023-08-04 08:12:41'),
(96, 38, 'xvideo', NULL, '2023-08-04 08:12:41', '2023-08-04 08:12:41'),
(97, 39, 'ximage', '1671452696_pic8.jpg', '2023-08-04 08:12:41', '2023-08-04 08:12:41'),
(98, 39, 'xvideo', NULL, '2023-08-04 08:12:41', '2023-08-04 08:12:41'),
(99, 40, 'ximage', '1671452801_pic10.jpg', '2023-08-04 08:12:42', '2023-08-04 08:12:42'),
(100, 40, 'xvideo', NULL, '2023-08-04 08:12:43', '2023-08-04 08:12:43'),
(101, 41, 'ximage', '1671452926_pic9.jpg', '2023-08-04 08:12:43', '2023-08-04 08:12:43'),
(102, 41, 'xvideo', NULL, '2023-08-04 08:12:43', '2023-08-04 08:12:43'),
(103, 42, 'ximage', '1672119867_pic4.jpg', '2023-08-04 08:12:43', '2023-08-04 08:12:43'),
(104, 42, 'xvideo', NULL, '2023-08-04 08:12:43', '2023-08-04 08:12:43'),
(105, 43, 'ximage', '1672119652_pic5.jpg', '2023-08-04 08:12:44', '2023-08-04 08:12:44'),
(106, 43, 'xvideo', NULL, '2023-08-04 08:12:44', '2023-08-04 08:12:44'),
(107, 44, 'ximage', '1672119546_pic6.jpg', '2023-08-04 08:12:44', '2023-08-04 08:12:44'),
(108, 44, 'xvideo', NULL, '2023-08-04 08:12:44', '2023-08-04 08:12:44'),
(109, 45, 'ximage', '1672119466_pic9.jpg', '2023-08-04 08:12:45', '2023-08-04 08:12:45'),
(110, 45, 'xvideo', NULL, '2023-08-04 08:12:45', '2023-08-04 08:12:45'),
(111, 46, 'ximage', '1671451668_pic2.jpg', '2023-08-04 08:12:46', '2023-08-04 08:12:46'),
(112, 46, 'xvideo', NULL, '2023-08-04 08:12:46', '2023-08-04 08:12:46'),
(113, 47, 'ximage', '1671448293_pic3.jpg', '2023-08-04 08:12:46', '2023-08-04 08:12:46'),
(114, 47, 'xvideo', NULL, '2023-08-04 08:12:46', '2023-08-04 08:12:46'),
(115, 48, 'ximage', '1671449713_pic7.jpg', '2023-08-04 08:12:46', '2023-08-04 08:12:46'),
(116, 48, 'xvideo', NULL, '2023-08-04 08:12:46', '2023-08-04 08:12:46'),
(117, 49, 'ximage', '1671451668_pic1.jpg', '2023-08-04 08:12:47', '2023-08-04 08:12:47'),
(118, 49, 'xvideo', NULL, '2023-08-04 08:12:47', '2023-08-04 08:12:47'),
(119, 49, 'test1', 'Test 1', '2023-08-04 08:12:47', '2023-08-04 08:12:47'),
(120, 49, 'test2', 'Test 2', '2023-08-04 08:12:47', '2023-08-04 08:12:47'),
(121, 50, 'ximage', '1671452041_pic8.jpg', '2023-08-04 08:12:48', '2023-08-04 08:12:48'),
(122, 50, 'xvideo', NULL, '2023-08-04 08:12:48', '2023-08-04 08:12:48'),
(123, 50, 'test1', 'Test 1', '2023-08-04 08:12:48', '2023-08-04 08:12:48'),
(124, 50, 'test2', 'Test 2', '2023-08-04 08:12:48', '2023-08-04 08:12:48'),
(125, 50, 'test3', 'Test 3', '2023-08-04 08:12:48', '2023-08-04 08:12:48'),
(126, 51, 'ximage', '1675146497_1672119546_pic6.jpg', '2023-08-04 08:12:48', '2023-08-04 08:12:48'),
(127, 51, 'xvideo', NULL, '2023-08-04 08:12:48', '2023-08-04 08:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `blog_seos`
--

CREATE TABLE `blog_seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_descriptions` longtext DEFAULT NULL,
  `blog_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_seos`
--

INSERT INTO `blog_seos` (`id`, `blog_id`, `page_title`, `meta_keywords`, `meta_descriptions`, `blog_url`, `created_at`, `updated_at`) VALUES
(24, 38, 'test seo2', 'yurtyurtyu', 'rtyurtyu', NULL, '2023-08-04 08:12:41', '2023-08-04 08:12:41'),
(25, 39, 'test seo', 'admin@localhost.com', 'sdfgdfg', NULL, '2023-08-04 08:12:42', '2023-08-04 08:12:42'),
(26, 40, 'sdfsf', 'sdfsdf', 'sdfsdf', NULL, '2023-08-04 08:12:43', '2023-08-04 08:12:43'),
(27, 46, NULL, NULL, NULL, NULL, '2023-08-04 08:12:46', '2023-08-04 08:12:46'),
(28, 48, NULL, NULL, NULL, NULL, '2023-08-04 08:12:46', '2023-08-04 08:12:46'),
(29, 49, NULL, NULL, NULL, NULL, '2023-08-04 08:12:47', '2023-08-04 08:12:47'),
(30, 50, NULL, NULL, NULL, NULL, '2023-08-04 08:12:48', '2023-08-04 08:12:48'),
(31, 51, NULL, NULL, NULL, NULL, '2023-08-04 08:12:48', '2023-08-04 08:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `user_id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(13, 1, 'Application', 'application', '2023-08-04 08:12:42', '2023-08-04 08:12:42'),
(14, 1, 'Education', 'education', '2023-08-04 08:12:42', '2023-08-04 08:12:42'),
(15, 1, 'Businesses', 'businesses', '2023-08-04 08:12:43', '2023-08-04 08:12:43'),
(16, 1, 'Employees', 'employees', '2023-08-04 08:12:43', '2023-08-04 08:12:43'),
(17, 1, 'Company', 'company', '2023-08-04 08:12:43', '2023-08-04 08:12:43'),
(18, 1, 'Jobs', 'jobs', '2023-08-04 08:12:44', '2023-08-04 08:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT 0,
  `object_id` bigint(20) UNSIGNED DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT 0,
  `commenter` varchar(255) DEFAULT NULL,
  `profile_url` varchar(255) DEFAULT NULL,
  `ip` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `approve` enum('0','1','2','3') NOT NULL COMMENT '0 => moderation / pending, 1 => approved, 2 => spam, 3 => trash',
  `browser_agent` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `input_type` varchar(255) DEFAULT NULL,
  `editable` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) DEFAULT NULL,
  `params` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`id`, `name`, `value`, `title`, `description`, `input_type`, `editable`, `weight`, `params`, `order`) VALUES
(1, 'Site.title', 'W3CMS Laravel', NULL, NULL, 'text', 1, 1, NULL, 1),
(2, 'Site.tagline', 'W3CMS Laravel System', NULL, NULL, 'textarea', 1, 2, NULL, 2),
(3, 'Site.email', 'admin@gmail.com', NULL, NULL, 'text', 1, 3, NULL, 3),
(4, 'Site.status', '1', NULL, NULL, 'checkbox', 1, 4, NULL, 11),
(5, 'Site.copyright', 'Crafted with <span class=\"heart\"></span> by <a href=\"https://www.w3itexperts.com/\\\" target=\\\"_blank\\\">W3ITEXPERTS</a>', 'Copyright Text', NULL, 'text', 1, 5, NULL, 5),
(6, 'Site.footer_text', 'Developed by <a href=\"https://www.w3itexperts.com/\\\" target=\\\"_blank\\\">W3itexperts</a>', 'Footer text', NULL, 'textarea', 1, 6, NULL, 6),
(7, 'Site.coming_soon', '0', NULL, NULL, 'checkbox', 1, 7, NULL, 12),
(8, 'Site.contact', '1234567890', NULL, NULL, 'text', 1, 8, NULL, 7),
(9, 'Site.logo', '1687438225.logo.png', 'Logo', 'Site Logo', 'file', 1, 9, NULL, 8),
(10, 'Site.favicon', '1673435350.favicon.png', 'Site Favicon', 'Site Favicon', 'file', 1, 10, NULL, 9),
(11, 'Site.maintenance_message', 'PLEASE SORRY FOR THE <span class=\"text-primary\">DISTURBANCES</span>', 'Maintenance Message', 'Site down for maintenance Message will show on maintenance page', 'textarea', 1, 11, NULL, 11),
(12, 'Site.comingsoon_message', 'We Are Coming Soon !', 'Coming Soon Message', 'Coming soon message will show on coming soon page', 'textarea', 1, 12, NULL, 13),
(13, 'Site.text_logo', '1673435350.logo-text.png', 'Text Logo', NULL, 'file', 1, 13, NULL, 10),
(14, 'Writing.editable', '1', 'Enable WYSIWYG editor', NULL, 'checkbox', 1, 14, NULL, 14),
(15, 'Reading.nodes_per_page', '10', NULL, NULL, 'text', 1, 15, NULL, 15),
(16, 'Reading.date_time_format', 'M. d, Y, g:i A', NULL, 'Formates :- <br>\r\nF j, Y, g:i a (November 23, 2022, 5:45 am), <br>\r\nY-m-d , H:i (2022-11-23, 05:45), <br>\r\nm/d/Y (11/23/2022), <br>\r\nd/m/Y(23/11/2022)', 'text', 1, 16, NULL, 16),
(17, 'Social.instagram', 'https://www.instagram.com/', 'Instagram Url', NULL, 'text', 1, 17, NULL, 17),
(18, 'Social.linkedin', 'https://www.in.linkedin.com/', 'Whatsapp Url', NULL, 'text', 1, 17, NULL, 18),
(19, 'Social.facebook', 'http://www.facebook.com', 'Facebook Url', NULL, 'text', 1, 18, NULL, 19),
(20, 'Social.twitter', 'http://www.twitter.com', 'Twitter Url', NULL, 'text', 1, 19, NULL, 20),
(21, 'Site.menu_location', 'a:5:{s:7:\"primary\";a:2:{s:5:\"title\";s:23:\"Desktop Horizontal Menu\";s:4:\"menu\";i:29;}s:8:\"expanded\";a:2:{s:5:\"title\";s:21:\"Desktop Expanded Menu\";s:4:\"menu\";s:1:\"3\";}s:6:\"mobile\";a:2:{s:5:\"title\";s:11:\"Mobile Menu\";s:4:\"menu\";N;}s:6:\"footer\";a:2:{s:5:\"title\";s:11:\"Footer Menu\";s:4:\"menu\";s:1:\"5\";}s:6:\"social\";a:2:{s:5:\"title\";s:11:\"Social Menu\";s:4:\"menu\";s:0:\"\";}}', NULL, NULL, 'text', 0, 20, NULL, 24),
(22, 'Permalink.settings', '/%slug%/', '', NULL, 'text', 1, 21, NULL, 21),
(23, 'Reading.show_on_front', 'Page', NULL, '(Home Page)', 'radio', 1, 22, 'Post,Page', 22),
(24, 'Widget.show_sidebar', '1', NULL, NULL, 'checkbox', 1, NULL, '1', 25),
(25, 'Widget.show_recent_post_widget', '1', NULL, NULL, 'checkbox', 1, NULL, '1', 26),
(26, 'Widget.show_category_widget', '1', NULL, '', 'checkbox', 1, NULL, '1', 27),
(27, 'Widget.show_archives_widget', '1', NULL, '', 'checkbox', 1, NULL, '1', 28),
(28, 'Widget.show_search_widget', '1', NULL, NULL, 'checkbox', 1, NULL, '1', 29),
(29, 'Widget.show_tags_widget', '1', NULL, '', 'checkbox', 1, NULL, '1', 30),
(30, 'Site.comingsoon_date', '2023-01-05', NULL, '', 'date', 1, NULL, '', 14),
(31, 'Site.biography', 'A Wonderful Serenity Has Taken Possession Of My Entire Soul, Like These.', NULL, '', 'text', 1, NULL, '', 32),
(32, 'Site.location', '832  Thompson Drive, San Fransisco CA 94107, United States', NULL, '', 'text', 1, NULL, '', 33),
(33, 'Site.office_time', 'Time 09:00 AM To 07:00 PM', NULL, 'Ex. : \"Time 06:00 AM To 08:00 PM\'', 'text', 1, NULL, '', 34),
(34, 'Site.icon_logo', '1673520377.image_2023_01_02T08_30_32_811Z.png', NULL, '', 'file', 1, NULL, '', 35),
(36, 'Site.w3cms_locale', 'en', 'Select Language', '', 'select', 1, NULL, 'en,hi,fr,ru', 4),
(37, 'Reading.home_page', 'home', NULL, NULL, NULL, 1, NULL, NULL, 37),
(38, 'Theme.select_theme', 'frontend/lemars', NULL, NULL, NULL, 0, NULL, NULL, 38),
(43, 'Environment.menu', NULL, NULL, '', NULL, 0, NULL, '', 0),
(44, 'Site.default_role', '1', NULL, NULL, NULL, 1, NULL, NULL, 0),
(45, 'Site.date_format', 'F j, Y', NULL, NULL, NULL, 1, NULL, NULL, 0),
(46, 'Site.custom_date_format', 'F j, Y', NULL, NULL, NULL, 1, NULL, NULL, 0),
(47, 'Site.time_format', 'g:i a', NULL, NULL, NULL, 1, NULL, NULL, 0),
(48, 'Site.custom_time_format', 'g:i a', NULL, NULL, NULL, 1, NULL, NULL, 0),
(49, 'Discussion.menu', NULL, NULL, '', NULL, 1, NULL, '', 0),
(50, 'Discussion.name_email_require', '1', NULL, NULL, NULL, 1, NULL, NULL, 0),
(51, 'Discussion.close_comments_days_old', '14', NULL, NULL, NULL, 1, NULL, NULL, 0),
(52, 'Discussion.thread_comments_depth', '4', NULL, NULL, NULL, 1, NULL, NULL, 0),
(53, 'Discussion.default_comments_page', 'newest', NULL, NULL, NULL, 1, NULL, NULL, 0),
(54, 'Discussion.comment_order', 'desc', NULL, NULL, NULL, 1, NULL, NULL, 0),
(55, 'Discussion.comment_max_links', NULL, NULL, NULL, NULL, 1, NULL, NULL, 0),
(56, 'Discussion.moderation_keys', NULL, NULL, NULL, NULL, 1, NULL, NULL, 0),
(57, 'Discussion.disallowed_comment_keys', NULL, NULL, NULL, NULL, 1, NULL, NULL, 0),
(58, 'Discussion.pingback_flag', '0', NULL, NULL, NULL, 1, NULL, NULL, 0),
(59, 'Discussion.pingback_status', '0', NULL, NULL, NULL, 1, NULL, NULL, 0),
(60, 'Discussion.comment_status', '1', NULL, NULL, NULL, 1, NULL, NULL, 0),
(61, 'Discussion.registration_comment', '0', NULL, NULL, NULL, 1, NULL, NULL, 0),
(62, 'Discussion.old_posts_comment_close', '0', NULL, NULL, NULL, 1, NULL, NULL, 0),
(63, 'Discussion.show_comments_cookies_opt_in', '0', NULL, NULL, NULL, 1, NULL, NULL, 0),
(64, 'Discussion.thread_comments', '1', NULL, NULL, NULL, 1, NULL, NULL, 0),
(65, 'Discussion.page_comments', '1', NULL, NULL, NULL, 1, NULL, NULL, 0),
(66, 'Discussion.comments_notify', '0', NULL, NULL, NULL, 1, NULL, NULL, 0),
(67, 'Discussion.moderation_notify', '0', NULL, NULL, NULL, 1, NULL, NULL, 0),
(68, 'Discussion.comment_moderation', '1', NULL, NULL, NULL, 1, NULL, NULL, 0),
(69, 'Discussion.comment_previously_approved', '1', NULL, NULL, NULL, 1, NULL, NULL, 0),
(70, 'Discussion.comments_per_page', '2', NULL, NULL, NULL, 1, NULL, NULL, 0),
(71, 'Discussion.save_comments_cookie', '0', NULL, NULL, NULL, 1, NULL, NULL, 0),
(72, 'Site.logo_white', '1687438225.logo-white.png', 'Logo White', 'Site Logo White', 'file', 1, NULL, NULL, 0),
(73, 'Reading.public_blog_search', '0', NULL, NULL, NULL, 1, NULL, NULL, 0),
(74, 'Site.direction', 'ltr', NULL, NULL, NULL, 1, NULL, NULL, 0),
(75, 'Settings.admin_layout', '0', NULL, NULL, NULL, 1, NULL, NULL, 0),
(77, 'Settings.admin_layout_options', '{\"typography\":\"poppins\",\"version\":\"light\",\"layout\":\"vertical\",\"headerBg\":\"color_1\",\"primary\":\"color_1\",\"navheaderBg\":\"color_1\",\"sidebarBg\":\"color_1\",\"sidebarStyle\":\"full\",\"sidebarPosition\":\"fixed\",\"headerPosition\":\"fixed\",\"containerLayout\":\"full\",\"direction\":\"ltr\"}', NULL, NULL, NULL, 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` enum('Admin','User') DEFAULT NULL COMMENT 'A => Admin, U => User',
  `order` bigint(20) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `user_id`, `title`, `slug`, `type`, `order`, `created_at`, `updated_at`) VALUES
(28, 1, 'Footer Menu', 'footer-menu', NULL, 0, '2023-08-04 08:12:48', '2023-08-04 08:12:48'),
(29, 1, 'Primary Menu', 'primary-menu', NULL, 0, '2023-08-04 08:12:49', '2023-08-04 08:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) DEFAULT 0,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) DEFAULT 0,
  `type` varchar(255) NOT NULL COMMENT 'Page, Link, Category, Post, Tag, Cpt',
  `title` varchar(255) NOT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `menu_target` tinyint(4) DEFAULT 0,
  `css_classes` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `order` bigint(20) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `parent_id`, `menu_id`, `item_id`, `type`, `title`, `attribute`, `link`, `menu_target`, `css_classes`, `description`, `order`, `created_at`, `updated_at`) VALUES
(150, 0, 28, 51, 'Page', 'Home', 'Home', NULL, 0, NULL, NULL, 0, '2023-08-04 08:12:49', '2023-08-04 08:12:49'),
(151, 0, 28, 52, 'Page', 'About Us', 'About Us', NULL, 0, NULL, NULL, 1, '2023-08-04 08:12:49', '2023-08-04 08:12:49'),
(152, 0, 28, 53, 'Page', 'Contact Us', 'Contact Us', NULL, 0, NULL, NULL, 2, '2023-08-04 08:12:49', '2023-08-04 08:12:49'),
(153, 0, 29, 0, 'Link', 'Blogs', 'Blogs', 'https://w3cms.in/lemars/blog', 0, NULL, NULL, 5, '2023-08-04 08:12:49', '2023-08-04 08:12:49'),
(154, 0, 29, 0, 'Link', 'Pages', 'Pages', 'javascript: void(0);', 0, NULL, NULL, 2, '2023-08-04 08:12:49', '2023-08-04 08:12:49'),
(155, 0, 29, 51, 'Page', 'Home', 'Home', NULL, 0, NULL, NULL, 0, '2023-08-04 08:12:49', '2023-08-04 08:12:49'),
(156, 0, 29, 52, 'Page', 'About Us', 'About Us', NULL, 0, NULL, NULL, 1, '2023-08-04 08:12:49', '2023-08-04 08:12:49'),
(157, 0, 29, 53, 'Page', 'Contact Us', 'Contact Us', NULL, 0, NULL, NULL, 6, '2023-08-04 08:12:49', '2023-08-04 08:12:49'),
(158, 154, 29, 13, 'Category', 'Category', 'Category', NULL, 0, NULL, NULL, 3, '2023-08-04 08:12:49', '2023-08-04 08:12:49'),
(159, 154, 29, 18, 'Tag', 'Tag', 'Tag', NULL, 0, NULL, NULL, 4, '2023-08-04 08:12:49', '2023-08-04 08:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_06_22_115736_create_configurations_table', 1),
(7, '2021_10_21_093713_create_temp_permissions_tables', 1),
(8, '2021_10_21_093714_create_permission_tables', 1),
(9, '2021_10_23_113846_create_sessions_table', 1),
(10, '2021_11_01_070431_create_pages_table', 1),
(11, '2021_11_01_070450_create_page_metas_table', 1),
(12, '2021_11_01_070459_create_page_seos_table', 1),
(13, '2021_11_12_103141_create_blogs_table', 1),
(14, '2021_11_12_103153_create_blog_tags_table', 1),
(15, '2021_11_12_103159_create_blog_metas_table', 1),
(16, '2021_11_12_103208_create_blog_categories_table', 1),
(17, '2021_11_12_103209_create_blog_blog_categories_table', 1),
(18, '2021_11_12_103216_create_blog_blog_tags_table', 1),
(19, '2021_11_12_103305_create_blog_seos_table', 1),
(20, '2022_01_21_064821_create_menus_table', 1),
(21, '2022_01_21_064832_create_menu_items_table', 1),
(22, '2022_12_17_114134_create_contacts_table', 1),
(26, '2023_04_10_095456_create_terms_table', 1),
(27, '2023_04_10_095537_create_term_relationships_table', 1),
(28, '2023_05_04_121624_create_comments_table', 1),
(29, '2023_05_04_121624_create_comments_table', 1),
(30, '2021_07_03_1_create_notification_config_table', 2),
(31, '2021_07_03_2_create_notification_templates_table', 2),
(32, '2021_07_03_3_create_notifications_table', 2),
(33, '2021_07_03_4_create_user_notification_config_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `deny` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notification_config_id` bigint(20) NOT NULL,
  `notification_types` varchar(50) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `sender_id` bigint(20) DEFAULT NULL,
  `receiver_id` bigint(20) DEFAULT NULL,
  `read` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=Unread, 1=read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_config`
--

CREATE TABLE `notification_config` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `table_model` varchar(255) NOT NULL,
  `notification_types` varchar(50) DEFAULT NULL COMMENT 'Type-A 1- Email Type-B 2-Header Notification 3-Popup Notification 4-Mobile Notification',
  `placeholders` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_config`
--

INSERT INTO `notification_config` (`id`, `title`, `code`, `table_model`, `notification_types`, `placeholders`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Update Blog', 'BLOG-UB', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-29 05:50:55', '2023-06-02 00:23:42'),
(4, 'New Ticket Generation', 'SPRT-NTG', 'Ticket', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-30 07:33:51', '2023-06-03 07:53:10'),
(5, 'Reply on Ticket', 'SPRT-ROT', 'Ticket', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-30 07:34:49', '2023-06-03 07:53:10'),
(6, 'Like on ticket', 'SPRT-LOT', 'Ticket', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-30 07:35:47', '2023-06-03 07:53:10'),
(7, 'Started ticket', 'SPRT-ST', 'Ticket', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-30 07:36:27', '2023-06-03 07:53:10'),
(8, 'Ticket Status Changed', 'SPRT-TSC', 'Ticket', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-30 07:58:12', '2023-06-03 07:53:10'),
(9, 'Ticket Category Changed', 'SPRT-TCC', 'Ticket', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-30 07:58:58', '2023-06-03 07:53:10'),
(10, 'Assign Ticket To Other', 'SPRT-ATO', 'Ticket', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-30 07:59:33', '2023-06-03 07:53:10'),
(11, 'Flagged Inappropriate', 'SPRT-FI', 'Ticket', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-30 08:00:56', '2023-06-03 07:53:11'),
(12, 'Mark as Read', 'SPRT-MR', 'Ticket', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-30 08:02:16', '2023-06-03 07:53:11'),
(13, 'Make Private', 'SPRT-MP', 'Ticket', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-30 08:03:05', '2023-06-03 07:53:11'),
(14, 'Delete Ticket', 'SPRT-DT', 'Ticket', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-30 08:03:38', '2023-06-03 07:53:11'),
(15, 'Send a Note', 'SPRT-SN', 'Ticket', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-30 08:04:18', '2023-06-03 07:53:11'),
(16, 'Close Ticket', 'SPRT-CT', 'Ticket', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-30 08:04:53', '2023-06-03 07:53:11'),
(17, 'Reopen Ticket', 'SPRT-RT', 'Ticket', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-30 08:05:40', '2023-06-03 07:53:11'),
(18, 'Add New Blog', 'BLOG-ANB', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 01:09:22', '2023-06-03 07:53:11'),
(19, 'Delete Blog', 'BLOG-DB', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 01:31:34', '2023-06-03 07:53:11'),
(20, 'Trash Blog', 'BLOG-TB', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 01:36:52', '2023-06-03 07:53:11'),
(21, 'Add New Blog Category', 'BLOG-ANBC', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 01:55:17', '2023-06-03 07:53:11');
INSERT INTO `notification_config` (`id`, `title`, `code`, `table_model`, `notification_types`, `placeholders`, `status`, `created_at`, `updated_at`) VALUES
(22, 'Update Blog Category', 'BLOG-UBCT', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FULLNAME#: Firstname can display with this placeholder.<br />\r\n#EMAIL#: Firstname can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n#ROLE#: User role can display with this placeholder.<br />\r\n#PROFILE#: User profile can display with this placeholder.<br />\r\n<b>Role Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#NAME#: Firstname can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n<b>Comment Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Blog comment can display with this placeholder.<br />\r\n<b>BlogCategory Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>BlogTag Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 02:01:59', '2023-06-03 07:53:11'),
(23, 'Delete Blog Category', 'BLOG-DBC', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 03:07:08', '2023-06-03 07:53:11'),
(24, 'Add New Blog Tag', 'BLOG-ANBT', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 03:55:06', '2023-06-03 07:53:11'),
(25, 'Update Blog Tag', 'BLOG-UBT', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 04:01:26', '2023-06-03 07:53:11'),
(26, 'Delete Blog Tag', 'BLOG-DBT', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 04:04:53', '2023-06-03 07:53:11'),
(27, 'Blog New Comment', 'BLOG-NBC', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FULLNAME#: Firstname can display with this placeholder.<br />\r\n#EMAIL#: Firstname can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n#ROLE#: User role can display with this placeholder.<br />\r\n#PROFILE#: User profile can display with this placeholder.<br />\r\n<b>Role Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#NAME#: Firstname can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n<b>Comment Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Blog comment can display with this placeholder.<br />\r\n<b>BlogCategory Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>BlogTag Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 04:09:43', '2023-06-03 07:53:11'),
(28, 'Blog Comment Delete', 'BLOG-BCD', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 04:19:41', '2023-06-03 07:53:11'),
(29, 'Add New Page', 'PAGE-ANP', 'Page', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 04:25:14', '2023-06-03 07:53:11'),
(30, 'Update Page', 'PAGE-UP', 'Page', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 04:34:36', '2023-06-03 07:53:11'),
(31, 'Trash Page', 'PAGE-TP', 'Page', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 04:38:31', '2023-06-03 07:53:11'),
(32, 'Delete Page', 'PAGE-DP', 'Page', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 04:41:31', '2023-06-03 07:53:11'),
(33, 'Create New Post Type', 'W3CPT-CNPT', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 04:46:36', '2023-06-03 07:53:11'),
(34, 'Update Post Type', 'W3CPT-UPT', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 04:48:22', '2023-06-03 07:53:11'),
(35, 'Trash Post Type', 'W3CPT-TPT', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 04:55:11', '2023-06-03 07:53:12'),
(36, 'Delete Post Type', 'W3CPT-DPT', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 04:57:12', '2023-06-03 07:53:12'),
(37, 'Create New Taxonomy', 'W3CPT-CNT', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 04:59:01', '2023-06-03 07:53:12'),
(38, 'Update Taxonomy', 'W3CPT-UT', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 05:00:10', '2023-06-03 07:53:12'),
(39, 'Trash Taxonomy', 'W3CPT-TT', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 05:00:51', '2023-06-03 07:53:12');
INSERT INTO `notification_config` (`id`, `title`, `code`, `table_model`, `notification_types`, `placeholders`, `status`, `created_at`, `updated_at`) VALUES
(40, 'Delete Taxonomy', 'W3CPT-DT', 'Blog', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Post type content can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n#BLOGTAGCONTENT#: Blog tag content can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-05-31 05:01:32', '2023-06-03 07:53:12'),
(41, 'Add New User', 'ADMIN-ANU', 'User', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FULLNAME#: Firstname can display with this placeholder.<br />\r\n#EMAIL#: Firstname can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n#ROLE#: User role can display with this placeholder.<br />\r\n#PROFILE#: User profile can display with this placeholder.<br />\r\n<b>Role Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#NAME#: Firstname can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n<b>Comment Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Blog comment can display with this placeholder.<br />\r\n<b>BlogCategory Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>BlogTag Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-06-01 02:05:00', '2023-06-03 07:53:12'),
(42, 'Update User', 'ADMIN-UP', 'User', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FULLNAME#: Firstname can display with this placeholder.<br />\r\n#EMAIL#: Firstname can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n#ROLE#: User role can display with this placeholder.<br />\r\n#PROFILE#: User profile can display with this placeholder.<br />\r\n<b>Role Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#NAME#: Firstname can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n<b>Comment Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Blog comment can display with this placeholder.<br />\r\n<b>BlogCategory Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>BlogTag Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-06-01 03:30:18', '2023-06-03 07:53:12'),
(43, 'Delete User', 'ADMIN-DU', 'User', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FULLNAME#: Firstname can display with this placeholder.<br />\r\n#EMAIL#: Firstname can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n#ROLE#: User role can display with this placeholder.<br />\r\n#PROFILE#: User profile can display with this placeholder.<br />\r\n<b>Role Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#NAME#: Firstname can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n<b>Comment Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Blog comment can display with this placeholder.<br />\r\n<b>BlogCategory Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>BlogTag Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-06-01 03:35:32', '2023-06-03 07:53:12'),
(44, 'Update User Password', 'ADMIN-UUPASS', 'User', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FULLNAME#: Firstname can display with this placeholder.<br />\r\n#EMAIL#: Firstname can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n#ROLE#: User role can display with this placeholder.<br />\r\n#PROFILE#: User profile can display with this placeholder.<br />\r\n<b>Role Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#NAME#: Firstname can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n<b>Comment Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Blog comment can display with this placeholder.<br />\r\n<b>BlogCategory Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>BlogTag Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-06-01 04:27:05', '2023-06-03 07:53:12'),
(45, 'Assign User Role', 'ADMIN-AUR', 'User', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FULLNAME#: Firstname can display with this placeholder.<br />\r\n#EMAIL#: Firstname can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n#ROLE#: User role can display with this placeholder.<br />\r\n#PROFILE#: User profile can display with this placeholder.<br />\r\n<b>Role Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#NAME#: Firstname can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n<b>Comment Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Blog comment can display with this placeholder.<br />\r\n<b>BlogCategory Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>BlogTag Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-06-01 04:37:06', '2023-06-03 07:53:12'),
(46, 'Add New Role', 'ADMIN-ANR', 'Role', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FULLNAME#: Firstname can display with this placeholder.<br />\r\n#EMAIL#: Firstname can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n#ROLE#: User role can display with this placeholder.<br />\r\n#PROFILE#: User profile can display with this placeholder.<br />\r\n<b>Role Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#NAME#: Firstname can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n<b>Comment Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Blog comment can display with this placeholder.<br />\r\n<b>BlogCategory Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>BlogTag Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-06-01 04:41:08', '2023-06-03 07:53:12'),
(47, 'Update Role', 'ADMIN-UR', 'Role', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FULLNAME#: Firstname can display with this placeholder.<br />\r\n#EMAIL#: Firstname can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n#ROLE#: User role can display with this placeholder.<br />\r\n#PROFILE#: User profile can display with this placeholder.<br />\r\n<b>Role Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#NAME#: Firstname can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n<b>Comment Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Blog comment can display with this placeholder.<br />\r\n<b>BlogCategory Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>BlogTag Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-06-01 04:42:07', '2023-06-03 07:53:12'),
(48, 'Delete Role', 'ADMIN-DR', 'Role', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FULLNAME#: Firstname can display with this placeholder.<br />\r\n#EMAIL#: Firstname can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n#ROLE#: User role can display with this placeholder.<br />\r\n#PROFILE#: User profile can display with this placeholder.<br />\r\n<b>Role Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#NAME#: Firstname can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n<b>Comment Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Blog comment can display with this placeholder.<br />\r\n<b>BlogCategory Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>BlogTag Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-06-01 04:42:54', '2023-06-03 07:53:12'),
(49, 'Update Blog Comment', 'BLOG-UBC', 'Comment', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FULLNAME#: Firstname can display with this placeholder.<br />\r\n#EMAIL#: Firstname can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n#ROLE#: User role can display with this placeholder.<br />\r\n#PROFILE#: User profile can display with this placeholder.<br />\r\n<b>Role Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#NAME#: Firstname can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n<b>Comment Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Blog comment can display with this placeholder.<br />\r\n<b>BlogCategory Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>BlogTag Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-06-01 06:58:54', '2023-06-03 07:53:12'),
(50, 'Trash Blog Comment', 'BLOG-TBC', 'Role', '', '<b>User Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#FULLNAME#: Firstname can display with this placeholder.<br />\r\n#EMAIL#: Firstname can display with this placeholder.<br />\r\n#FIRSTNAME#: Firstname can display with this placeholder.<br />\r\n#LASTNAME#: Lastname can display with this placeholder.<br />\r\n#PASSWORD#: password can display with this placeholder.<br />\r\n#ROLE#: User role can display with this placeholder.<br />\r\n#PROFILE#: User profile can display with this placeholder.<br />\r\n<b>Role Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#NAME#: Firstname can display with this placeholder.<br />\r\n<b>Config Configuration </b><br />\r\n#SITETITLE#: Site title can display with this placeholder.<br />\r\n#SITELINK#: Site link can display with this placeholder.<br />\r\n#ADMINEMAIL#: Admin email can display with this placeholder.<br />\r\n#SUPPORTEMAIL#: Support email can display with this placeholder.<br />\r\n#SITEADDRESS#: Site address can display with this placeholder.<br />\r\n<b>Generate Configuration </b><br />\r\n#ACTIVATIONLINK#: Activation link can display with this placeholder.<br />\r\n#SITELOGO#: Site logo can display with this placeholder.<br />\r\n#LOGINLINK#: Login link can display with this placeholder.<br />\r\n#REGESTERLINK#: Registration link can display with this placeholder.<br />\r\n<b>Contact Configuration </b><br />\r\n#NAME#: Contact user name can display with this placeholder.<br />\r\n#EMAIL#: Contact user email can display with this placeholder.<br />\r\n#MESSAGE#: Contact user message can display with this placeholder.<br />\r\n<b>Subscribe Configuration </b><br />\r\n#USERNAME#: Subscribe user email can display with this placeholder.<br />\r\n<b>Blog Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTITLE#: Blog title can display with this placeholder.<br />\r\n#BLOGCONTENT#: Blog content can display with this placeholder.<br />\r\n#TAXONOMYTITLE#: Taxonomy title can display with this placeholder.<br />\r\n#TAXONOMYCONTENT#: Taxonomy content can display with this placeholder.<br />\r\n#POSTTYPETITLE#: Post type title can display with this placeholder.<br />\r\n#POSTTYPECONTENT#: Post type content can display with this placeholder.<br />\r\n<b>Comment Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCOMMENT#: Blog comment can display with this placeholder.<br />\r\n<b>BlogCategory Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGCATEGORYTITLE#: Blog category title can display with this placeholder.<br />\r\n#BLOGCATEGORYCONTENT#: Blog category content can display with this placeholder.<br />\r\n<b>BlogTag Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#BLOGTAGTITLE#: Blog tag title can display with this placeholder.<br />\r\n<b>Page Configuration </b><br />\r\n#USERNAME#: Username can display with this placeholder.<br />\r\n#PAGETITLE#: Page title can display with this placeholder.<br />\r\n#PAGECONTENT#: Page content can display with this placeholder.', 1, '2023-06-01 07:15:16', '2023-06-03 07:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notification_config_id` bigint(20) UNSIGNED NOT NULL,
  `notification_type_id` tinyint(4) NOT NULL,
  `subject` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `notification_config_id`, `notification_type_id`, `subject`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(2, 3, 1, 'W3CMS: Updated Blog #BLOGTITLE#', 'w3-c-m-s:-updated-blog#-b-l-o-g-t-i-t-l-e#', '<p>Blog updated by: #USERNAME#</p>\r\n\r\n<h3>#BLOGTITLE#</h3>\r\n#BLOGCONTENT#', '2023-05-29 05:50:55', '2023-06-03 07:56:53'),
(3, 3, 2, '', '', NULL, '2023-05-29 05:50:55', '2023-05-29 05:50:55'),
(4, 3, 3, '', '', NULL, '2023-05-29 05:50:56', '2023-05-29 05:50:56'),
(5, 4, 1, 'W3itexperts Support: Ticket Comment from #SENDERNAME# [Ticket ##TICKETID#]', 'w3itexperts-support:-ticket-comment-from#-s-e-n-d-e-r-n-a-m-e#[-ticket##-t-i-c-k-e-t-i-d#]', '<p>There is a new comment on the support ticket in the&nbsp;<strong>#CATEGORYNAME#</strong>&nbsp;category from #SENDERNAME#. Here&#39;s what they said:</p>\r\n\r\n<p>#TICKETCOMMENT#</p>\r\n\r\n<p>#TICKETATTACHMENT#</p>\r\n\r\n<p><strong>Do not reply to this email!</strong><a href=\"https://192.168.29.205/support/admin/notifications/edit/1#TICKETLINK#\">Click here to sign in and reply to this ticket.</a></p>', '2023-05-30 07:33:51', '2023-05-30 07:33:51'),
(6, 4, 2, '', '', NULL, '2023-05-30 07:33:51', '2023-05-30 07:33:51'),
(7, 4, 3, '', '', NULL, '2023-05-30 07:33:52', '2023-05-30 07:33:52'),
(8, 5, 1, 'W3itexperts Support: [Ticket ##TICKETID#] Comment by #SENDERNAME#', 'w3itexperts-support:[-ticket##-t-i-c-k-e-t-i-d#]-comment-by#-s-e-n-d-e-r-n-a-m-e#', '<p>There is a new comment on the support ticket in the&nbsp;<strong>#CATEGORYNAME#</strong>&nbsp;category from #SENDERNAME#. Here&#39;s what they said:</p>\r\n\r\n<p>#TICKETCOMMENT#</p>\r\n\r\n<p>#TICKETATTACHMENT#</p>\r\n\r\n<p><strong>Do not reply to this email!</strong><a href=\"https://192.168.29.205/support/admin/notifications/edit/2#TICKETLINK#\">Click here to sign in and reply to this ticket.</a></p>', '2023-05-30 07:34:49', '2023-05-30 07:34:49'),
(9, 5, 2, '', '', NULL, '2023-05-30 07:34:50', '2023-05-30 07:34:50'),
(10, 5, 3, '', '', NULL, '2023-05-30 07:34:50', '2023-05-30 07:34:50'),
(11, 6, 1, 'W3itexperts Support: [Ticket ##TICKETID#] Like By #SENDERNAME#', 'w3itexperts-support:[-ticket##-t-i-c-k-e-t-i-d#]-like-by#-s-e-n-d-e-r-n-a-m-e#', '<p>There is new like on the support ticket in the <strong>#CATEGORYNAME#</strong> category from #SENDERNAME#. Here&#39;s what they said:</p>\r\n\r\n<div style=\"padding:0px 20px; border-left: 3px solid #eee; color:#888;\">\r\n<p>#TICKETCOMMENT#</p>\r\n\r\n<p>#TICKETATTACHMENT#</p>\r\n</div>\r\n\r\n<p><strong>Do not reply to this email!</strong> <a href=\"#TICKETLINK#\" style=\"display: block;\">Click here to sign in and reply to this ticket.</a></p>', '2023-05-30 07:35:47', '2023-05-30 07:35:47'),
(12, 6, 2, '', '', NULL, '2023-05-30 07:35:47', '2023-05-30 07:35:47'),
(13, 6, 3, '', '', NULL, '2023-05-30 07:35:47', '2023-05-30 07:35:47'),
(14, 7, 1, 'W3itexperts Support: [Ticket ##TICKETID#] Starred By #SENDERNAME#', 'w3itexperts-support:[-ticket##-t-i-c-k-e-t-i-d#]-starred-by#-s-e-n-d-e-r-n-a-m-e#', '<p>There is starred ticket on the support ticket in the&nbsp;<strong>#CATEGORYNAME#</strong>&nbsp;category from #SENDERNAME#. Here&#39;s what they said:</p>\r\n\r\n<p>#TICKETCOMMENT#</p>\r\n\r\n<p>#TICKETATTACHMENT#</p>\r\n\r\n<p><strong>Do not reply to this email!</strong><a href=\"https://192.168.29.205/support/admin/notifications/edit/4#TICKETLINK#\">Click here to sign in and reply to this ticket.</a></p>', '2023-05-30 07:36:27', '2023-05-30 07:36:27'),
(15, 7, 2, '', '', NULL, '2023-05-30 07:36:27', '2023-05-30 07:36:27'),
(16, 7, 3, '', '', NULL, '2023-05-30 07:36:27', '2023-05-30 07:36:27'),
(17, 8, 1, 'W3itexperts Support: [Ticket ##TICKETID#] Status Changed By #SENDERNAME#', 'w3itexperts-support:[-ticket##-t-i-c-k-e-t-i-d#]-status-changed-by#-s-e-n-d-e-r-n-a-m-e#', '<p>There is ticket status changed by&nbsp;#SENDERNAME#&nbsp;on the support ticket in the&nbsp;<strong>#CATEGORYNAME#</strong>&nbsp;category. Here&#39;s what they said:</p>\r\n\r\n<p>#TICKETCOMMENT#</p>\r\n\r\n<p>#TICKETATTACHMENT#</p>\r\n\r\n<p><strong>Do not reply to this email!</strong><a href=\"https://192.168.29.205/support/admin/notifications/edit/5#TICKETLINK#\">Click here to sign in and reply to this ticket.</a></p>', '2023-05-30 07:58:12', '2023-05-30 07:58:12'),
(18, 8, 2, '', '', NULL, '2023-05-30 07:58:12', '2023-05-30 07:58:12'),
(19, 8, 3, '', '', NULL, '2023-05-30 07:58:12', '2023-05-30 07:58:12'),
(20, 9, 1, 'W3itexperts Support: [Ticket ##TICKETID#] Category Changed by #SENDERNAME#', 'w3itexperts-support:[-ticket##-t-i-c-k-e-t-i-d#]-category-changed-by#-s-e-n-d-e-r-n-a-m-e#', '<p>There is category&nbsp;<strong>#CATEGORYNAME#</strong>&nbsp;changed by #SENDERNAME# on the support ticket. Here&#39;s what they said:</p>\r\n\r\n<p>#TICKETCOMMENT#</p>\r\n\r\n<p>#TICKETATTACHMENT#</p>\r\n\r\n<p><strong>Do not reply to this email!</strong><a href=\"https://192.168.29.205/support/admin/notifications/edit/6#TICKETLINK#\">Click here to sign in and reply to this ticket.</a></p>', '2023-05-30 07:58:58', '2023-05-30 07:58:58'),
(21, 9, 2, '', '', NULL, '2023-05-30 07:58:58', '2023-05-30 07:58:58'),
(22, 9, 3, '', '', NULL, '2023-05-30 07:58:58', '2023-05-30 07:58:58'),
(23, 10, 1, 'W3itexperts Support: #SENDERNAME# Assigned Ticket for #RECEIVERNAME# [Ticket ##TICKETID#]', 'w3itexperts-support:#-s-e-n-d-e-r-n-a-m-e#-assigned-ticket-for#-r-e-c-e-i-v-e-r-n-a-m-e#[-ticket##-t-i-c-k-e-t-i-d#]', '<p>There is assigned ticket to&nbsp;<b>#RECEIVERNAME#</b>&nbsp;on the support ticket in the&nbsp;<strong>#CATEGORYNAME#</strong>&nbsp;category from #SENDERNAME#. Here&#39;s what they said:</p>\r\n\r\n<p>#TICKETCOMMENT#</p>\r\n\r\n<p>#TICKETATTACHMENT#</p>\r\n\r\n<p><strong>Do not reply to this email!</strong><a href=\"https://192.168.29.205/support/admin/notifications/edit/7#TICKETLINK#\">Click here to sign in and reply to this ticket.</a></p>', '2023-05-30 07:59:33', '2023-05-30 07:59:33'),
(24, 10, 2, '', '', NULL, '2023-05-30 07:59:33', '2023-05-30 07:59:33'),
(25, 10, 3, '', '', NULL, '2023-05-30 07:59:33', '2023-05-30 07:59:33'),
(26, 11, 1, 'W3itexperts Support: #SENDERNAME# Flagged #RECEIVERNAME# [Ticket ##TICKETID#]', 'w3itexperts-support:#-s-e-n-d-e-r-n-a-m-e#-flagged#-r-e-c-e-i-v-e-r-n-a-m-e#[-ticket##-t-i-c-k-e-t-i-d#]', '<p>#SENDERNAME# Flagged #RECEIVERNAME# [Ticket ##TICKETID#]</p>\r\n\r\n<p><strong>Do not reply to this email!</strong><a href=\"https://192.168.29.205/support/admin/notifications/edit/8#TICKETLINK#\">Click here to sign in and reply to this ticket.</a></p>', '2023-05-30 08:00:56', '2023-05-30 08:00:56'),
(27, 11, 2, '', '', NULL, '2023-05-30 08:00:56', '2023-05-30 08:00:56'),
(28, 11, 3, '', '', NULL, '2023-05-30 08:00:56', '2023-05-30 08:00:56'),
(29, 12, 1, 'W3itexperts Support: [Ticket ##TICKETID#] Comment Read By #SENDERNAME#', 'w3itexperts-support:[-ticket##-t-i-c-k-e-t-i-d#]-comment-read-by#-s-e-n-d-e-r-n-a-m-e#', '<p>There is comment read by&nbsp;<b>#SENDERNAME#</b>&nbsp;on the support ticket in the&nbsp;<strong>#CATEGORYNAME#</strong>&nbsp;category. Here&#39;s what they said:</p>\r\n\r\n<p>#TICKETCOMMENT#</p>\r\n\r\n<p>#TICKETATTACHMENT#</p>\r\n\r\n<p><strong>Do not reply to this email!</strong><a href=\"https://192.168.29.205/support/admin/notifications/edit/9#TICKETLINK#\">Click here to sign in and reply to this ticket.</a></p>', '2023-05-30 08:02:16', '2023-05-30 08:02:16'),
(30, 12, 2, '', '', NULL, '2023-05-30 08:02:16', '2023-05-30 08:02:16'),
(31, 12, 3, '', '', NULL, '2023-05-30 08:02:16', '2023-05-30 08:02:16'),
(32, 13, 1, 'W3itexperts Support: [Ticket ##TICKETID#] Make Private by #SENDERNAME#', 'w3itexperts-support:[-ticket##-t-i-c-k-e-t-i-d#]-make-private-by#-s-e-n-d-e-r-n-a-m-e#', '<p>There is a ticket make private on the support ticket in the&nbsp;<strong>#CATEGORYNAME#</strong>&nbsp;category from #SENDERNAME#. Here&#39;s what they said:</p>\r\n\r\n<p>#TICKETCOMMENT#</p>\r\n\r\n<p>#TICKETATTACHMENT#</p>\r\n\r\n<p><strong>Do not reply to this email!</strong><a href=\"https://192.168.29.205/support/admin/notifications/edit/10#TICKETLINK#\">Click here to sign in and reply to this ticket.</a></p>', '2023-05-30 08:03:05', '2023-05-30 08:03:05'),
(33, 13, 2, '', '', NULL, '2023-05-30 08:03:05', '2023-05-30 08:03:05'),
(34, 13, 3, '', '', NULL, '2023-05-30 08:03:05', '2023-05-30 08:03:05'),
(35, 14, 1, 'W3itexperts Support: [Ticket ##TICKETID#] Deleted By #SENDERNAME#', 'w3itexperts-support:[-ticket##-t-i-c-k-e-t-i-d#]-deleted-by#-s-e-n-d-e-r-n-a-m-e#', '<p>[Ticket ##TICKETID#] Deleted By #SENDERNAME#</p>\r\n\r\n<p><strong>Do not reply to this email!</strong><a href=\"https://192.168.29.205/support/admin/notifications/edit/11#TICKETLINK#\">Click here to sign in and reply to this ticket.</a></p>', '2023-05-30 08:03:38', '2023-05-30 08:03:38'),
(36, 14, 2, '', '', NULL, '2023-05-30 08:03:38', '2023-05-30 08:03:38'),
(37, 14, 3, '', '', NULL, '2023-05-30 08:03:38', '2023-05-30 08:03:38'),
(38, 15, 1, 'W3itexperts Support: Ticket Note from #SENDERNAME# [Ticket ##TICKETID#]', 'w3itexperts-support:-ticket-note-from#-s-e-n-d-e-r-n-a-m-e#[-ticket##-t-i-c-k-e-t-i-d#]', '<p>There is a new note on the support ticket in the&nbsp;<strong>#CATEGORYNAME#</strong>&nbsp;category from #SENDERNAME#. Here&#39;s what they said:</p>\r\n\r\n<p>#TICKETCOMMENT#</p>\r\n\r\n<p>#TICKETATTACHMENT#</p>\r\n\r\n<p><strong>Do not reply to this email!</strong><a href=\"https://192.168.29.205/support/admin/notifications/edit/12#TICKETLINK#\">Click here to sign in and reply to this ticket.</a></p>', '2023-05-30 08:04:18', '2023-05-30 08:04:18'),
(39, 15, 2, '', '', NULL, '2023-05-30 08:04:18', '2023-05-30 08:04:18'),
(40, 15, 3, '', '', NULL, '2023-05-30 08:04:18', '2023-05-30 08:04:18'),
(41, 16, 1, 'W3itexperts Support: [Ticket ##TICKETID#] Closed by #SENDERNAME#', 'w3itexperts-support:[-ticket##-t-i-c-k-e-t-i-d#]-closed-by#-s-e-n-d-e-r-n-a-m-e#', '<p>There is closed ticket on the support ticket in the&nbsp;<strong>#CATEGORYNAME#</strong>&nbsp;category from #SENDERNAME#. Here&#39;s what they said:</p>\r\n\r\n<p>#TICKETCOMMENT#</p>\r\n\r\n<p>#TICKETATTACHMENT#</p>\r\n\r\n<p><strong>Do not reply to this email!</strong><a href=\"https://192.168.29.205/support/admin/notifications/edit/13#TICKETLINK#\">Click here to sign in and reply to this ticket.</a></p>', '2023-05-30 08:04:54', '2023-05-30 08:04:54'),
(42, 16, 2, '', '', NULL, '2023-05-30 08:04:54', '2023-05-30 08:04:54'),
(43, 16, 3, '', '', NULL, '2023-05-30 08:04:54', '2023-05-30 08:04:54'),
(44, 17, 1, 'W3itexperts Support: [Ticket ##TICKETID#] Reopen by #SENDERNAME#', 'w3itexperts-support:[-ticket##-t-i-c-k-e-t-i-d#]-reopen-by#-s-e-n-d-e-r-n-a-m-e#', '<p>There is reopen ticket on the support ticket in the&nbsp;<strong>#CATEGORYNAME#</strong>&nbsp;category from #SENDERNAME#. Here&#39;s what they said:</p>\r\n\r\n<p>#TICKETCOMMENT#</p>\r\n\r\n<p>#TICKETATTACHMENT#</p>\r\n\r\n<p><strong>Do not reply to this email!</strong><a href=\"https://192.168.29.205/support/admin/notifications/edit/14#TICKETLINK#\">Click here to sign in and reply to this ticket.</a></p>', '2023-05-30 08:05:40', '2023-05-30 08:05:40'),
(45, 17, 2, '', '', NULL, '2023-05-30 08:05:40', '2023-05-30 08:05:40'),
(46, 17, 3, '', '', NULL, '2023-05-30 08:05:40', '2023-05-30 08:05:40'),
(47, 18, 1, 'W3CMS: Created New Blog #BLOGTITLE#', 'w3-c-m-s:-created-new-blog#-b-l-o-g-t-i-t-l-e#', '<p>New blog created by: #USERNAME#</p>\r\n\r\n<h3>#BLOGTITLE#</h3>\r\n\r\n<p>#BLOGCONTENT#</p>', '2023-05-31 01:09:23', '2023-05-31 05:56:54'),
(48, 18, 2, '', '', NULL, '2023-05-31 01:09:23', '2023-05-31 01:09:23'),
(49, 18, 3, '', '', NULL, '2023-05-31 01:09:23', '2023-05-31 01:09:23'),
(50, 19, 1, 'W3CMS: Deleted Blog #BLOGTITLE#', 'w3-c-m-s:-deleted-blog#-b-l-o-g-t-i-t-l-e#', '<p>Blog deleted by: #USERNAME#</p>\r\n\r\n<h3>#BLOGTITLE#</h3>\r\n\r\n<p>#BLOGCONTENT#</p>', '2023-05-31 01:31:34', '2023-05-31 06:27:51'),
(51, 19, 2, '', '', NULL, '2023-05-31 01:31:34', '2023-05-31 01:31:34'),
(52, 19, 3, '', '', NULL, '2023-05-31 01:31:34', '2023-05-31 01:31:34'),
(53, 20, 1, 'W3CMS: Trashed Blog #BLOGTITLE#', 'w3-c-m-s:-trashed-blog#-b-l-o-g-t-i-t-l-e#', '<p>Blog trashed by: #USERNAME#</p>\r\n\r\n<h3>#BLOGTITLE#</h3>\r\n\r\n<p>#BLOGCONTENT#</p>', '2023-05-31 01:36:52', '2023-05-31 06:27:39'),
(54, 20, 2, '', '', NULL, '2023-05-31 01:36:52', '2023-05-31 01:36:52'),
(55, 20, 3, '', '', NULL, '2023-05-31 01:36:52', '2023-05-31 01:36:52'),
(56, 21, 1, 'W3CMS: New Blog Category Added #BLOGCATEGORYTITLE#', 'w3-c-m-s:-new-blog-category-added#-b-l-o-g-c-a-t-e-g-o-r-y-t-i-t-l-e#', '<p>New blog category added by: #USERNAME#</p>\r\n\r\n<h3>#BLOGCATEGORYTITLE#</h3>\r\n\r\n<p>#BLOGCATEGORYCONTENT#</p>', '2023-05-31 01:55:18', '2023-05-31 06:26:34'),
(57, 21, 2, '', '', NULL, '2023-05-31 01:55:18', '2023-05-31 01:55:18'),
(58, 21, 3, '', '', NULL, '2023-05-31 01:55:18', '2023-05-31 01:55:18'),
(59, 22, 1, 'W3CMS: Updated Blog Category #BLOGCATEGORYTITLE#', 'w3-c-m-s:-updated-blog-category#-b-l-o-g-c-a-t-e-g-o-r-y-t-i-t-l-e#', '<p>Blog category updated by: #USERNAME#</p>\r\n\r\n<h3>#BLOGCATEGORYTITLE#</h3>\r\n\r\n<p>#BLOGCATEGORYCONTENT#</p>', '2023-05-31 02:01:59', '2023-05-31 06:23:11'),
(60, 22, 2, '', '', NULL, '2023-05-31 02:01:59', '2023-05-31 02:01:59'),
(61, 22, 3, '', '', NULL, '2023-05-31 02:01:59', '2023-05-31 02:01:59'),
(62, 23, 1, 'W3CMS: Deleted Blog Category #BLOGCATEGORYTITLE#', 'w3-c-m-s:-deleted-blog-category#-b-l-o-g-c-a-t-e-g-o-r-y-t-i-t-l-e#', '<p>Blog category deleted by: #USERNAME#</p>\r\n\r\n<h3>#BLOGCATEGORYTITLE#</h3>\r\n\r\n<p>#BLOGCATEGORYCONTENT#</p>', '2023-05-31 03:07:08', '2023-05-31 06:22:59'),
(63, 23, 2, '', '', NULL, '2023-05-31 03:07:08', '2023-05-31 03:07:08'),
(64, 23, 3, '', '', NULL, '2023-05-31 03:07:08', '2023-05-31 03:07:08'),
(65, 24, 1, 'W3CMS: New Blog Tag Added #BLOGTAGTITLE#', 'w3-c-m-s:-new-blog-tag-added#-b-l-o-g-t-a-g-t-i-t-l-e#', '<p>New blog tag added by: #USERNAME#</p>\r\n\r\n<h3>#BLOGTAGTITLE#</h3>\r\n\r\n<p>#BLOGTAGCONTENT#</p>', '2023-05-31 03:55:06', '2023-05-31 06:21:29'),
(66, 24, 2, '', '', NULL, '2023-05-31 03:55:06', '2023-05-31 03:55:06'),
(67, 24, 3, '', '', NULL, '2023-05-31 03:55:06', '2023-05-31 03:55:06'),
(68, 25, 1, 'W3CMS: Updated Blog Tag #BLOGTAGTITLE#', 'w3-c-m-s:-updated-blog-tag#-b-l-o-g-t-a-g-t-i-t-l-e#', '<p>Blog tag updated by: #USERNAME#</p>\r\n\r\n<h3>#BLOGTAGTITLE#</h3>\r\n\r\n<p>#BLOGTAGCONTENT#</p>', '2023-05-31 04:01:26', '2023-05-31 06:20:04'),
(69, 25, 2, '', '', NULL, '2023-05-31 04:01:26', '2023-05-31 04:01:26'),
(70, 25, 3, '', '', NULL, '2023-05-31 04:01:26', '2023-05-31 04:01:26'),
(71, 26, 1, 'W3CMS: Deleted Blog Tag #BLOGTAGTITLE#', 'w3-c-m-s:-deleted-blog-tag#-b-l-o-g-t-a-g-t-i-t-l-e#', '<p>Blog tag deleted by: #USERNAME#</p>\r\n\r\n<h3>#BLOGTAGTITLE#</h3>\r\n\r\n<p>#BLOGTAGCONTENT#</p>', '2023-05-31 04:04:53', '2023-05-31 06:19:06'),
(72, 26, 2, '', '', NULL, '2023-05-31 04:04:53', '2023-05-31 04:04:53'),
(73, 26, 3, '', '', NULL, '2023-05-31 04:04:53', '2023-05-31 04:04:53'),
(74, 27, 1, 'W3CMS: Blog New Comment #BLOGTITLE#', 'w3-c-m-s:-blog-new-comment#-b-l-o-g-t-i-t-l-e#', '<p>Blog new comment by: #USERNAME#</p>\r\n\r\n<h3>#BLOGTITLE#</h3>\r\n\r\n<p>#BLOGCOMMENT#</p>', '2023-05-31 04:09:44', '2023-05-31 06:16:54'),
(75, 27, 2, '', '', NULL, '2023-05-31 04:09:44', '2023-05-31 04:09:44'),
(76, 27, 3, '', '', NULL, '2023-05-31 04:09:44', '2023-05-31 04:09:44'),
(77, 28, 1, 'W3CMS: Deleted Blog Comment #BLOGTITLE#', 'w3-c-m-s:-deleted-blog-comment#-b-l-o-g-t-i-t-l-e#', '<p>Blog comment deleted by: #USERNAME#</p>\r\n\r\n<h3>#BLOGTITLE#</h3>\r\n\r\n<p>#BLOGCOMMENT#</p>', '2023-05-31 04:19:41', '2023-05-31 06:16:20'),
(78, 28, 2, '', '', NULL, '2023-05-31 04:19:41', '2023-05-31 04:19:41'),
(79, 28, 3, '', '', NULL, '2023-05-31 04:19:41', '2023-05-31 04:19:41'),
(80, 29, 1, 'W3CMS: Added New Page #PAGETITLE#', 'w3-c-m-s:-added-new-page#-p-a-g-e-t-i-t-l-e#', '<p>New page added by: #USERNAME#</p>\r\n\r\n<h3>#PAGETITLE#</h3>\r\n\r\n<p>#PAGECONTENT#</p>', '2023-05-31 04:25:14', '2023-05-31 06:10:04'),
(81, 29, 2, '', '', NULL, '2023-05-31 04:25:14', '2023-05-31 04:25:14'),
(82, 29, 3, '', '', NULL, '2023-05-31 04:25:14', '2023-05-31 04:25:14'),
(83, 30, 1, 'W3CMS: Updated Page #PAGETITLE#', 'w3-c-m-s:-updated-page#-p-a-g-e-t-i-t-l-e#', '<p>Page updated by: #USERNAME#</p>\r\n\r\n<h3>#PAGETITLE#</h3>', '2023-05-31 04:34:36', '2023-06-03 07:57:19'),
(84, 30, 2, '', '', NULL, '2023-05-31 04:34:36', '2023-05-31 04:34:36'),
(85, 30, 3, '', '', NULL, '2023-05-31 04:34:36', '2023-05-31 04:34:36'),
(86, 31, 1, 'W3CMS: Trashed Page #PAGETITLE#', 'w3-c-m-s:-trashed-page#-p-a-g-e-t-i-t-l-e#', '<p>Page trashed by: #USERNAME#</p>\r\n\r\n<h3>#PAGETITLE#</h3>\r\n\r\n<p>#PAGECONTENT#</p>', '2023-05-31 04:38:31', '2023-05-31 06:08:58'),
(87, 31, 2, '', '', NULL, '2023-05-31 04:38:31', '2023-05-31 04:38:31'),
(88, 31, 3, '', '', NULL, '2023-05-31 04:38:32', '2023-05-31 04:38:32'),
(89, 32, 1, 'W3CMS: Deleted Page #PAGETITLE#', 'w3-c-m-s:-deleted-page#-p-a-g-e-t-i-t-l-e#', '<p>Page deleted by: #USERNAME#</p>\r\n\r\n<h3>#PAGETITLE#</h3>\r\n\r\n<p>#PAGECONTENT#</p>', '2023-05-31 04:41:31', '2023-05-31 06:07:57'),
(90, 32, 2, '', '', NULL, '2023-05-31 04:41:31', '2023-05-31 04:41:31'),
(91, 32, 3, '', '', NULL, '2023-05-31 04:41:31', '2023-05-31 04:41:31'),
(92, 33, 1, 'W3CMS: Created New Post Type #POSTTYPETITLE#', 'w3-c-m-s:-created-new-post-type#-p-o-s-t-t-y-p-e-t-i-t-l-e#', '<p>New post type created by: #USERNAME#</p>\r\n\r\n<h3>#POSTTYPETITLE#</h3>\r\n\r\n<p>#POSTTYPECOMMENT#</p>', '2023-05-31 04:46:36', '2023-05-31 06:06:21'),
(93, 33, 2, '', '', NULL, '2023-05-31 04:46:36', '2023-05-31 04:46:36'),
(94, 33, 3, '', '', NULL, '2023-05-31 04:46:36', '2023-05-31 04:46:36'),
(95, 34, 1, 'W3CMS: Updated Post Type #POSTTYPETITLE#', 'w3-c-m-s:-updated-post-type#-p-o-s-t-t-y-p-e-t-i-t-l-e#', '<p>Post type updated by: #USERNAME#</p>\r\n\r\n<h3>#POSTTYPETITLE#</h3>\r\n\r\n<p>#POSTTYPECOMMENT#</p>', '2023-05-31 04:48:22', '2023-05-31 06:06:06'),
(96, 34, 2, '', '', NULL, '2023-05-31 04:48:22', '2023-05-31 04:48:22'),
(97, 34, 3, '', '', NULL, '2023-05-31 04:48:22', '2023-05-31 04:48:22'),
(98, 35, 1, 'W3CMS: Trashed Post Type #POSTTYPETITLE#', 'w3-c-m-s:-trashed-post-type#-p-o-s-t-t-y-p-e-t-i-t-l-e#', '<p>Post type trashed by: #USERNAME#</p>\r\n\r\n<h3>#POSTTYPETITLE#</h3>\r\n\r\n<p>#POSTTYPECONTENT#</p>', '2023-05-31 04:55:11', '2023-05-31 04:55:11'),
(99, 35, 2, '', '', NULL, '2023-05-31 04:55:11', '2023-05-31 04:55:11'),
(100, 35, 3, '', '', NULL, '2023-05-31 04:55:11', '2023-05-31 04:55:11'),
(101, 36, 1, 'W3CMS: Deleted Post Type #POSTTYPETITLE#', 'w3-c-m-s:-deleted-post-type#-p-o-s-t-t-y-p-e-t-i-t-l-e#', '<p>Post type deleted by: #USERNAME#</p>\r\n\r\n<h3>#POSTTYPETITLE#</h3>\r\n\r\n<p>#POSTTYPECONTENT#</p>', '2023-05-31 04:57:12', '2023-05-31 04:57:12'),
(102, 36, 2, '', '', NULL, '2023-05-31 04:57:12', '2023-05-31 04:57:12'),
(103, 36, 3, '', '', NULL, '2023-05-31 04:57:12', '2023-05-31 04:57:12'),
(104, 37, 1, 'W3CMS: Created New Taxonomy #TAXONOMYTITLE#', 'w3-c-m-s:-created-new-taxonomy#-t-a-x-o-n-o-m-y-t-i-t-l-e#', '<p>Taxonomy created by: #USERNAME#</p>\r\n\r\n<h3>#TAXONOMYTITLE#</h3>\r\n\r\n<p>#TAXONOMYCONTENT#</p>', '2023-05-31 04:59:01', '2023-05-31 04:59:01'),
(105, 37, 2, '', '', NULL, '2023-05-31 04:59:01', '2023-05-31 04:59:01'),
(106, 37, 3, '', '', NULL, '2023-05-31 04:59:01', '2023-05-31 04:59:01'),
(107, 38, 1, 'W3CMS: Updated Taxonomy #TAXONOMYTITLE#', 'w3-c-m-s:-updated-taxonomy#-t-a-x-o-n-o-m-y-t-i-t-l-e#', '<p>Taxonomy updated by: #USERNAME#</p>\r\n\r\n<h3>#TAXONOMYTITLE#</h3>\r\n\r\n<p>#TAXONOMYCONTENT#</p>', '2023-05-31 05:00:10', '2023-05-31 06:02:14'),
(108, 38, 2, '', '', NULL, '2023-05-31 05:00:10', '2023-05-31 05:00:10'),
(109, 38, 3, '', '', NULL, '2023-05-31 05:00:10', '2023-05-31 05:00:10'),
(110, 39, 1, 'W3CMS: Trashed Taxonomy #TAXONOMYTITLE#', 'w3-c-m-s:-trashed-taxonomy#-t-a-x-o-n-o-m-y-t-i-t-l-e#', '<p>Taxonomy trashed by: #USERNAME#</p>\r\n\r\n<h3>#TAXONOMYTITLE#</h3>\r\n\r\n<p>#TAXONOMYCONTENT#</p>', '2023-05-31 05:00:51', '2023-05-31 05:00:51'),
(111, 39, 2, '', '', NULL, '2023-05-31 05:00:51', '2023-05-31 05:00:51'),
(112, 39, 3, '', '', NULL, '2023-05-31 05:00:51', '2023-05-31 05:00:51'),
(113, 40, 1, 'W3CMS: Deleted Taxonomy #TAXONOMYTITLE#', 'w3-c-m-s:-deleted-taxonomy#-t-a-x-o-n-o-m-y-t-i-t-l-e#', '<p>Taxonomy deleted by: #USERNAME#</p>\r\n\r\n<h3>#TAXONOMYTITLE#</h3>\r\n\r\n<p>#TAXONOMYCONTENT#</p>', '2023-05-31 05:01:32', '2023-05-31 05:01:32'),
(114, 40, 2, '', '', NULL, '2023-05-31 05:01:32', '2023-05-31 05:01:32'),
(115, 40, 3, '', '', NULL, '2023-05-31 05:01:32', '2023-05-31 05:01:32'),
(116, 41, 1, 'W3CMS: Added New User #FULLNAME#', 'w3-c-m-s:-added-new-user#-f-u-l-l-n-a-m-e#', '<p>New user created by: #USERNAME#</p>\r\n\r\n<p>#PROFILE#<br />\r\nName: #FULLNAME#<br />\r\nEmail: #EMAIL#<br />\r\nUser Role: #ROLE#</p>', '2023-06-01 02:05:00', '2023-06-01 06:24:56'),
(117, 41, 2, '', '', NULL, '2023-06-01 02:05:00', '2023-06-01 02:05:00'),
(118, 41, 3, '', '', NULL, '2023-06-01 02:05:00', '2023-06-01 02:05:00'),
(119, 42, 1, 'W3CMS: Updated User #FULLNAME#', 'w3-c-m-s:-updated-user#-f-u-l-l-n-a-m-e#', '<p>User updated by: #USERNAME#</p>\r\n\r\n<p>#PROFILE#<br />\r\nName: #FULLNAME#<br />\r\nEmail: #EMAIL#</p>', '2023-06-01 03:30:18', '2023-06-01 06:17:26'),
(120, 42, 2, '', '', NULL, '2023-06-01 03:30:18', '2023-06-01 03:30:18'),
(121, 42, 3, '', '', NULL, '2023-06-01 03:30:18', '2023-06-01 03:30:18'),
(122, 43, 1, 'W3CMS: Deleted User', 'w3-c-m-s:-deleted-user', '<p>User deleted by: #USERNAME#</p>\r\n\r\n<p>#PROFILE#<br />\r\nName: #FULLNAME#<br />\r\nEmail: #EMAIL#<br />\r\nUser Role: #ROLE#</p>', '2023-06-01 03:35:32', '2023-06-01 06:20:32'),
(123, 43, 2, '', '', NULL, '2023-06-01 03:35:32', '2023-06-01 03:35:32'),
(124, 43, 3, '', '', NULL, '2023-06-01 03:35:32', '2023-06-01 03:35:32'),
(125, 44, 1, 'W3CMS: Updated User Password', 'w3-c-m-s:-updated-user-password', '<p>User password Updated by: #USERNAME#</p>\r\n#PROFILE#<br />\r\nName: #FULLNAME#<br />\r\nEmail: #EMAIL#', '2023-06-01 04:27:06', '2023-06-01 06:34:03'),
(126, 44, 2, '', '', NULL, '2023-06-01 04:27:06', '2023-06-01 04:27:06'),
(127, 44, 3, '', '', NULL, '2023-06-01 04:27:06', '2023-06-01 04:27:06'),
(128, 45, 1, 'W3CMS: Role Assigned To User #FULLNAME#', 'w3-c-m-s:-role-assigned-to-user#-f-u-l-l-n-a-m-e#', '<p>Role assigned by: #USERNAME#</p>\r\n\r\n<p>Name: #FULLNAME#<br />\r\nEmail: #EMAIL#<br />\r\nUser Role: #ROLE#</p>', '2023-06-01 04:37:06', '2023-06-01 06:17:54'),
(129, 45, 2, '', '', NULL, '2023-06-01 04:37:07', '2023-06-01 04:37:07'),
(130, 45, 3, '', '', NULL, '2023-06-01 04:37:07', '2023-06-01 04:37:07'),
(131, 46, 1, 'W3CMS: Created New Role', 'w3-c-m-s:-created-new-role', '<p>Role created by: #USERNAME#</p>\r\n\r\n<p>Role Name: #NAME#</p>', '2023-06-01 04:41:08', '2023-06-01 04:42:10'),
(132, 46, 2, '', '', NULL, '2023-06-01 04:41:08', '2023-06-01 04:41:08'),
(133, 46, 3, '', '', NULL, '2023-06-01 04:41:08', '2023-06-01 04:41:08'),
(134, 47, 1, 'W3CMS: Updated Role', 'w3-c-m-s:-updated-role', '<p>Role updated by: #USERNAME#</p>\r\n\r\n<p>Role Name: #NAME#</p>', '2023-06-01 04:42:07', '2023-06-01 04:42:07'),
(135, 47, 2, '', '', NULL, '2023-06-01 04:42:08', '2023-06-01 04:42:08'),
(136, 47, 3, '', '', NULL, '2023-06-01 04:42:08', '2023-06-01 04:42:08'),
(137, 48, 1, 'W3CMS: Deleted Role', 'w3-c-m-s:-deleted-role', '<p>Role deleted by: #USERNAME#</p>\r\n\r\n<p>Role Name: #NAME#</p>', '2023-06-01 04:42:54', '2023-06-01 04:42:54'),
(138, 48, 2, '', '', NULL, '2023-06-01 04:42:54', '2023-06-01 04:42:54'),
(139, 48, 3, '', '', NULL, '2023-06-01 04:42:54', '2023-06-01 04:42:54'),
(140, 49, 1, 'W3CMS: Updated Blog Comment #BLOGTITLE#', 'w3-c-m-s:-updated-blog-comment#-b-l-o-g-t-i-t-l-e#', '<p>Blog comment updated by: #USERNAME#</p>\r\n\r\n<h3>#BLOGTITLE#</h3>', '2023-06-01 06:58:54', '2023-06-03 07:55:19'),
(141, 49, 2, '', '', NULL, '2023-06-01 06:58:54', '2023-06-01 06:58:54'),
(142, 49, 3, '', '', NULL, '2023-06-01 06:58:54', '2023-06-01 06:58:54'),
(143, 50, 1, 'W3CMS: Trashed Blog Comment #BLOGTITLE#', 'w3-c-m-s:-trashed-blog-comment#-b-l-o-g-t-i-t-l-e#', '<p>Blog comment trashed by: #USERNAME#</p>\r\n\r\n<h3>#BLOGTITLE#</h3>\r\n\r\n<p>#BLOGCOMMENT#</p>', '2023-06-01 07:15:16', '2023-06-01 07:15:16'),
(144, 50, 2, '', '', NULL, '2023-06-01 07:15:16', '2023-06-01 07:15:16'),
(145, 50, 3, '', '', NULL, '2023-06-01 07:15:16', '2023-06-01 07:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `page_type` enum('Page','Widget') DEFAULT NULL,
  `content` text DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `comment` tinyint(4) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 => Published, 2 => Draft, 3 => Trash, 4 => Private, 5 => Pending',
  `visibility` enum('Pu','PP','Pr') NOT NULL COMMENT 'Pu => Public, PP => Password Protected, Pr => Private',
  `publish_on` datetime DEFAULT NULL,
  `order` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `parent_id`, `user_id`, `title`, `slug`, `page_type`, `content`, `excerpt`, `comment`, `password`, `status`, `visibility`, `publish_on`, `order`, `created_at`, `updated_at`) VALUES
(51, 0, 1, 'Home', 'home', NULL, '[lemars_slider_banner_1&lt;%ME-EL%&gt;image=\"1685281628.pic6.jpg\"&lt;%ME-EL%&gt;no_of_posts=\"5\"&lt;%ME-EL%&gt;orderby=\"title\"&lt;%ME-EL%&gt;order=\"ASC\"&lt;%ME-EL%&gt;space_between=\"30\"&lt;%ME-EL%&gt;keyboard_control=\"true\"&lt;%ME-EL%&gt;auto_play=\"true\"&lt;%ME-EL%&gt;autoplay_delay=\"1500\"&lt;%ME-EL%&gt;loop=\"true\"&lt;%ME-EL%&gt;slides_per_view=\"3\"&lt;%ME-EL%&gt;speed=\"1500\"]&lt;%ME%&gt;[lemars_post_listing_2&lt;%ME-EL%&gt;post_category_ids=\"nature,place\"&lt;%ME-EL%&gt;post_with_images=\"true\"&lt;%ME-EL%&gt;no_of_posts=\"4\"&lt;%ME-EL%&gt;orderby=\"title\"&lt;%ME-EL%&gt;order=\"ASC\"&lt;%ME-EL%&gt;page_id=\"about-us\"]&lt;%ME%&gt;[lemars_post_listing_1&lt;%ME-EL%&gt;post_category_ids=\"nature,place\"&lt;%ME-EL%&gt;post_with_images=\"true\"&lt;%ME-EL%&gt;pagination=\"true\"&lt;%ME-EL%&gt;no_of_posts=\"5\"&lt;%ME-EL%&gt;orderby=\"title\"&lt;%ME-EL%&gt;order=\"ASC\"&lt;%ME-EL%&gt;view_all=\"true\"&lt;%ME-EL%&gt;page_id=\"about-us\"]&lt;%ME%&gt;[lemars_subscribe_box_1&lt;%ME-EL%&gt;title=\"Subscribe to My Blog\"&lt;%ME-EL%&gt;image=\"1686129169.subscribe.png\"]', 'It is a long established fact that a reader will be distracted by the readable content', NULL, NULL, 1, 'Pu', '2023-04-27 00:00:00', NULL, '2023-08-04 08:12:40', '2023-08-04 08:12:40'),
(52, 0, 1, 'About Us', 'about-us', NULL, '[lemars_content_box_1&lt;%ME-EL%&gt;title=\"About Me\"&lt;%ME-EL%&gt;image=\"1685350561.about.jpg\"&lt;%ME-EL%&gt;content1=\"Lorem ipsum dolor sit amet, consectetur adipisci elit. Nam imperdiet, orci sed volutpat tempor, nisl massa ullamcorper tortor, vitae vestibulu neque lacus em. Donec nisl purus, euismod vitae risu non, accumsan mollis urna. In consectetur ante, et interdum tortor. Aenean tristiquee dui vel semper.\"&lt;%ME-EL%&gt;content2=\"Lorem ipsum dolor sit amet, consectetur adipisci elit. Nam imperdiet, orci sed volutpat tempor, nisl massa ullamcorper tortor, vitae vestibulu neque lacus em. Donec nisl purus, euismod vitae risu non, accumsan mollis urna. In consectetur ante, et interdum tortor. Aenean tristiquee dui vel semper.\"]&lt;%ME%&gt;[lemars_subscribe_box_1&lt;%ME-EL%&gt;title=\"Subscribe to My Blog\"&lt;%ME-EL%&gt;image=\"1686129970.subscribe.png\"]', 'It is a long established fact that a reader will be distracted by the readable content', NULL, NULL, 1, 'Pu', '2023-04-27 00:00:00', NULL, '2023-08-04 08:12:40', '2023-08-04 08:12:40'),
(53, 0, 1, 'Contact Us', 'contact-us', NULL, '[lemars_contact_us_1&lt;%ME-EL%&gt;title=\"Contact Me\"&lt;%ME-EL%&gt;image=\"1685350734.contact.jpg\"&lt;%ME-EL%&gt;address=\"New York, USA\"&lt;%ME-EL%&gt;email=\"writeme@lamars.com\"&lt;%ME-EL%&gt;phone=\"(001) 222-3344\"&lt;%ME-EL%&gt;grouped=\"{%22icon%22:%22facebook%22,%22social_link%22:%22#%22}\"&lt;%ME-EL%&gt;grouped=\"{%22icon%22:%22instagram%22,%22social_link%22:%22#%22}\"&lt;%ME-EL%&gt;grouped=\"{%22icon%22:%22linkedin%22,%22social_link%22:%22#%22}\"&lt;%ME-EL%&gt;grouped=\"{%22icon%22:%22google%22,%22social_link%22:%22#%22}\"]&lt;%ME%&gt;[lemars_subscribe_box_1&lt;%ME-EL%&gt;title=\"Subscribe to My Blog\"&lt;%ME-EL%&gt;image=\"1686130096.subscribe.png\"]', 'It is a long established fact that a reader will be distracted by the readable content', NULL, NULL, 1, 'Pu', '2023-04-27 00:00:00', NULL, '2023-08-04 08:12:41', '2023-08-04 08:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `page_metas`
--

CREATE TABLE `page_metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_metas`
--

INSERT INTO `page_metas` (`id`, `page_id`, `title`, `value`, `created_at`, `updated_at`) VALUES
(266, 51, 'ximage', NULL, '2023-08-04 08:12:40', '2023-08-04 08:12:40'),
(267, 52, 'ximage', NULL, '2023-08-04 08:12:41', '2023-08-04 08:12:41'),
(268, 53, 'ximage', NULL, '2023-08-04 08:12:41', '2023-08-04 08:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `page_seos`
--

CREATE TABLE `page_seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `content_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_seos`
--

INSERT INTO `page_seos` (`id`, `page_id`, `page_title`, `meta_keywords`, `meta_descriptions`, `content_url`, `created_at`, `updated_at`) VALUES
(48, 51, NULL, NULL, NULL, NULL, '2023-08-04 08:12:40', '2023-08-04 08:12:40'),
(49, 52, NULL, NULL, NULL, NULL, '2023-08-04 08:12:41', '2023-08-04 08:12:41'),
(50, 53, NULL, NULL, NULL, NULL, '2023-08-04 08:12:41', '2023-08-04 08:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `temp_permission_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `action` text NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `type` enum('pre-define','user-define') NOT NULL DEFAULT 'user-define',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `temp_permission_id`, `name`, `action`, `guard_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 4, 'Controllers > PermissionsController > index', 'Controllers/PermissionsController@index', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(2, 5, 'Controllers > PermissionsController > roles_permissions', 'Controllers/PermissionsController@roles_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(3, 6, 'Controllers > PermissionsController > role_permissions', 'Controllers/PermissionsController@role_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(4, 7, 'Controllers > PermissionsController > user_permissions', 'Controllers/PermissionsController@user_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(5, 8, 'Controllers > PermissionsController > manage_user_permissions', 'Controllers/PermissionsController@manage_user_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(6, 9, 'Controllers > PermissionsController > sync', 'Controllers/PermissionsController@sync', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(7, 10, 'Controllers > PermissionsController > manage_role_all_permissions', 'Controllers/PermissionsController@manage_role_all_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(8, 11, 'Controllers > PermissionsController > manage_role_permission', 'Controllers/PermissionsController@manage_role_permission', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(9, 12, 'Controllers > PermissionsController > manage_user_permission', 'Controllers/PermissionsController@manage_user_permission', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(10, 13, 'Controllers > PermissionsController > delete_user_permission', 'Controllers/PermissionsController@delete_user_permission', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(11, 14, 'Controllers > PermissionsController > remove_user_all_permission', 'Controllers/PermissionsController@remove_user_all_permission', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(12, 15, 'Controllers > PermissionsController > temp_permissions', 'Controllers/PermissionsController@temp_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(13, 16, 'Controllers > PermissionsController > generate_permissions', 'Controllers/PermissionsController@generate_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(14, 17, 'Controllers > PermissionsController > add_to_permissions', 'Controllers/PermissionsController@add_to_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(15, 18, 'Controllers > PermissionsController > permission_by_action', 'Controllers/PermissionsController@permission_by_action', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(16, 19, 'Controllers > PermissionsController > get_users_by_role', 'Controllers/PermissionsController@get_users_by_role', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(17, 20, 'Controllers > PermissionsController > get_permission_by_user', 'Controllers/PermissionsController@get_permission_by_user', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(18, 22, 'Controllers > UsersController > dashboard', 'Controllers/UsersController@dashboard', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(19, 23, 'Controllers > UsersController > index', 'Controllers/UsersController@index', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(20, 24, 'Controllers > UsersController > create', 'Controllers/UsersController@create', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(21, 25, 'Controllers > UsersController > store', 'Controllers/UsersController@store', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(22, 26, 'Controllers > UsersController > edit', 'Controllers/UsersController@edit', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(23, 27, 'Controllers > UsersController > update', 'Controllers/UsersController@update', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(24, 28, 'Controllers > UsersController > destroy', 'Controllers/UsersController@destroy', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(25, 29, 'Controllers > UsersController > update_password', 'Controllers/UsersController@update_password', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(26, 30, 'Controllers > UsersController > update_user_roles', 'Controllers/UsersController@update_user_roles', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(27, 31, 'Controllers > UsersController > profile', 'Controllers/UsersController@profile', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(28, 33, 'Controllers > RolesController > index', 'Controllers/RolesController@index', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(29, 34, 'Controllers > RolesController > create', 'Controllers/RolesController@create', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(30, 35, 'Controllers > RolesController > store', 'Controllers/RolesController@store', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(31, 36, 'Controllers > RolesController > edit', 'Controllers/RolesController@edit', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(32, 37, 'Controllers > RolesController > update', 'Controllers/RolesController@update', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(33, 38, 'Controllers > RolesController > destroy', 'Controllers/RolesController@destroy', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(34, 40, 'Controllers > BlogsController > admin_index', 'Controllers/BlogsController@admin_index', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(35, 41, 'Controllers > BlogsController > admin_create', 'Controllers/BlogsController@admin_create', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(36, 42, 'Controllers > BlogsController > admin_store', 'Controllers/BlogsController@admin_store', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(37, 43, 'Controllers > BlogsController > admin_edit', 'Controllers/BlogsController@admin_edit', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(38, 44, 'Controllers > BlogsController > admin_update', 'Controllers/BlogsController@admin_update', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(39, 45, 'Controllers > BlogsController > admin_destroy', 'Controllers/BlogsController@admin_destroy', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(40, 46, 'Controllers > BlogsController > admin_trash_status', 'Controllers/BlogsController@admin_trash_status', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(41, 47, 'Controllers > BlogsController > remove_feature_image', 'Controllers/BlogsController@remove_feature_image', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(42, 49, 'Controllers > BlogCategoriesController > list', 'Controllers/BlogCategoriesController@list', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(43, 50, 'Controllers > BlogCategoriesController > admin_index', 'Controllers/BlogCategoriesController@admin_index', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(44, 51, 'Controllers > BlogCategoriesController > admin_create', 'Controllers/BlogCategoriesController@admin_create', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(45, 52, 'Controllers > BlogCategoriesController > admin_store', 'Controllers/BlogCategoriesController@admin_store', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(46, 53, 'Controllers > BlogCategoriesController > admin_edit', 'Controllers/BlogCategoriesController@admin_edit', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(47, 54, 'Controllers > BlogCategoriesController > admin_update', 'Controllers/BlogCategoriesController@admin_update', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(48, 55, 'Controllers > BlogCategoriesController > admin_destroy', 'Controllers/BlogCategoriesController@admin_destroy', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(49, 56, 'Controllers > BlogCategoriesController > admin_trash_status', 'Controllers/BlogCategoriesController@admin_trash_status', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(50, 57, 'Controllers > BlogCategoriesController > admin_ajax_add_category', 'Controllers/BlogCategoriesController@admin_ajax_add_category', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(51, 58, 'Controllers > BlogCategoriesController > admin_moveup', 'Controllers/BlogCategoriesController@admin_moveup', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(52, 59, 'Controllers > BlogCategoriesController > admin_movedown', 'Controllers/BlogCategoriesController@admin_movedown', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(53, 61, 'Controllers > PagesController > admin_index', 'Controllers/PagesController@admin_index', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(54, 62, 'Controllers > PagesController > admin_create', 'Controllers/PagesController@admin_create', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(55, 63, 'Controllers > PagesController > admin_store', 'Controllers/PagesController@admin_store', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(56, 64, 'Controllers > PagesController > admin_edit', 'Controllers/PagesController@admin_edit', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(57, 65, 'Controllers > PagesController > admin_update', 'Controllers/PagesController@admin_update', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(58, 66, 'Controllers > PagesController > admin_destroy', 'Controllers/PagesController@admin_destroy', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(59, 67, 'Controllers > PagesController > admin_trash_status', 'Controllers/PagesController@admin_trash_status', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(60, 68, 'Controllers > PagesController > remove_feature_image', 'Controllers/PagesController@remove_feature_image', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(61, 70, 'Controllers > MenusController > admin_index', 'Controllers/MenusController@admin_index', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(62, 71, 'Controllers > MenusController > admin_create', 'Controllers/MenusController@admin_create', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(63, 72, 'Controllers > MenusController > admin_store', 'Controllers/MenusController@admin_store', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(64, 73, 'Controllers > MenusController > admin_edit', 'Controllers/MenusController@admin_edit', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(65, 74, 'Controllers > MenusController > admin_update', 'Controllers/MenusController@admin_update', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(66, 75, 'Controllers > MenusController > admin_destroy', 'Controllers/MenusController@admin_destroy', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(67, 76, 'Controllers > MenusController > ajax_menu_item_delete', 'Controllers/MenusController@ajax_menu_item_delete', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(68, 77, 'Controllers > MenusController > admin_select_menu', 'Controllers/MenusController@admin_select_menu', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(69, 78, 'Controllers > MenusController > ajax_add_link', 'Controllers/MenusController@ajax_add_link', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(70, 79, 'Controllers > MenusController > ajax_add_page', 'Controllers/MenusController@ajax_add_page', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(71, 80, 'Controllers > MenusController > search_menus', 'Controllers/MenusController@search_menus', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(72, 82, 'Controllers > ConfigurationsController > admin_index', 'Controllers/ConfigurationsController@admin_index', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(73, 83, 'Controllers > ConfigurationsController > admin_add', 'Controllers/ConfigurationsController@admin_add', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(74, 84, 'Controllers > ConfigurationsController > admin_edit', 'Controllers/ConfigurationsController@admin_edit', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(75, 85, 'Controllers > ConfigurationsController > admin_delete', 'Controllers/ConfigurationsController@admin_delete', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(76, 86, 'Controllers > ConfigurationsController > admin_view', 'Controllers/ConfigurationsController@admin_view', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(77, 87, 'Controllers > ConfigurationsController > admin_prefix', 'Controllers/ConfigurationsController@admin_prefix', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(78, 88, 'Controllers > ConfigurationsController > admin_change_theme', 'Controllers/ConfigurationsController@admin_change_theme', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(79, 89, 'Controllers > ConfigurationsController > admin_change', 'Controllers/ConfigurationsController@admin_change', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(80, 90, 'Controllers > ConfigurationsController > admin_moveup', 'Controllers/ConfigurationsController@admin_moveup', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(81, 91, 'Controllers > ConfigurationsController > admin_movedown', 'Controllers/ConfigurationsController@admin_movedown', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(82, 92, 'Controllers > ConfigurationsController > save_permalink', 'Controllers/ConfigurationsController@save_permalink', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(83, 93, 'Controllers > ConfigurationsController > upload_editor_image', 'Controllers/ConfigurationsController@upload_editor_image', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(84, 130, 'Controllers > DashboardController > dashboard', 'Controllers/DashboardController@dashboard', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(85, 132, 'Controllers > BlogTagsController > list', 'Controllers/BlogTagsController@list', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(86, 133, 'Controllers > BlogTagsController > admin_index', 'Controllers/BlogTagsController@admin_index', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(87, 134, 'Controllers > BlogTagsController > admin_create', 'Controllers/BlogTagsController@admin_create', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(88, 135, 'Controllers > BlogTagsController > admin_store', 'Controllers/BlogTagsController@admin_store', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(89, 136, 'Controllers > BlogTagsController > admin_edit', 'Controllers/BlogTagsController@admin_edit', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(90, 137, 'Controllers > BlogTagsController > admin_update', 'Controllers/BlogTagsController@admin_update', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(91, 138, 'Controllers > BlogTagsController > admin_destroy', 'Controllers/BlogTagsController@admin_destroy', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(92, 96, 'Controllers > HomeController > blogcategory', 'Controllers/HomeController@blogcategory', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(93, 97, 'Controllers > HomeController > detail', 'Controllers/HomeController@detail', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(94, 125, 'Controllers > HomeController > author', 'Controllers/HomeController@author', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(95, 126, 'Controllers > HomeController > blogtag', 'Controllers/HomeController@blogtag', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(96, 127, 'Controllers > HomeController > search', 'Controllers/HomeController@search', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(97, 128, 'Controllers > HomeController > all', 'Controllers/HomeController@all', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(98, 139, 'Controllers > HomeController > blogarchive', 'Controllers/HomeController@blogarchive', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(99, 140, 'Controllers > HomeController > blogslist', 'Controllers/HomeController@blogslist', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(100, 102, 'Installation > WelcomeController > welcome', 'Installation/WelcomeController@welcome', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(101, 104, 'Installation > EnvironmentController > environmentMenu', 'Installation/EnvironmentController@environmentMenu', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(102, 105, 'Installation > EnvironmentController > environmentWizard', 'Installation/EnvironmentController@environmentWizard', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(103, 106, 'Installation > EnvironmentController > saveWizard', 'Installation/EnvironmentController@saveWizard', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(104, 107, 'Installation > EnvironmentController > environmentClassic', 'Installation/EnvironmentController@environmentClassic', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(105, 108, 'Installation > EnvironmentController > saveClassic', 'Installation/EnvironmentController@saveClassic', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(106, 110, 'Installation > RequirementsController > requirements', 'Installation/RequirementsController@requirements', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(107, 112, 'Installation > PermissionsController > permissions', 'Installation/PermissionsController@permissions', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(108, 114, 'Installation > DatabaseController > database', 'Installation/DatabaseController@database', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(109, 116, 'Installation > AdminSetupController > admin', 'Installation/AdminSetupController@admin', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(110, 117, 'Installation > AdminSetupController > saveAdmin', 'Installation/AdminSetupController@saveAdmin', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(111, 119, 'Installation > FinalController > finish', 'Installation/FinalController@finish', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(112, 121, 'Installation > UpdateController > welcome', 'Installation/UpdateController@welcome', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(113, 122, 'Installation > UpdateController > overview', 'Installation/UpdateController@overview', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(114, 123, 'Installation > UpdateController > database', 'Installation/UpdateController@database', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(115, 124, 'Installation > UpdateController > finish', 'Installation/UpdateController@finish', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(116, 141, 'Controllers > UsersController > remove_user_image', 'Controllers/UsersController@remove_user_image', 'web', 'user-define', '2022-12-23 03:48:13', '2022-12-23 03:48:13'),
(117, 142, 'Controllers > HomeController > contact', 'Controllers/HomeController@contact', 'web', 'user-define', '2022-12-23 03:48:13', '2022-12-23 03:48:13'),
(118, 143, 'Controllers > ConfigurationsController > remove_config_image', 'Controllers/ConfigurationsController@remove_config_image', 'web', 'user-define', '2023-02-11 04:32:50', '2023-02-11 04:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `module` text DEFAULT NULL COMMENT 'for laravel plugin/modules roles',
  `level` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'to maintain hierarchy',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `module`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', NULL, 0, '2022-10-29 08:21:29', '2023-01-07 07:36:54'),
(2, 'Manager', 'web', NULL, 0, '2022-10-29 08:21:29', '2022-12-24 05:19:21'),
(3, 'Customer', 'web', NULL, 0, '2022-12-08 07:03:15', '2022-12-24 05:25:42'),
(4, 'Admin', 'web', NULL, 0, '2023-01-07 05:07:01', '2023-01-07 07:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(84, 2),
(84, 3),
(84, 4),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_permissions`
--

CREATE TABLE `temp_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `type` enum('App','Module','Controller','Action') NOT NULL DEFAULT 'App',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_permissions`
--

INSERT INTO `temp_permissions` (`id`, `parent_id`, `name`, `path`, `controller`, `action`, `type`, `created_at`, `updated_at`) VALUES
(1, 0, 'Controllers', 'App\\Http\\Controllers\\Admin\\PermissionsController@index', NULL, NULL, 'App', NULL, NULL),
(2, 1, 'Admin', 'App\\Http\\Controllers\\Admin\\PermissionsController@index', NULL, NULL, 'App', NULL, NULL),
(3, 2, 'App\\Http\\Controllers\\Admin\\PermissionsController', 'App\\Http\\Controllers\\Admin\\PermissionsController@index', 'PermissionsController', NULL, 'Controller', NULL, NULL),
(4, 3, 'index', 'App\\Http\\Controllers\\Admin\\PermissionsController@index', 'PermissionsController', 'index', 'Action', NULL, NULL),
(5, 3, 'roles_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@roles_permissions', 'PermissionsController', 'roles_permissions', 'Action', NULL, NULL),
(6, 3, 'role_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@role_permissions', 'PermissionsController', 'role_permissions', 'Action', NULL, NULL),
(7, 3, 'user_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@user_permissions', 'PermissionsController', 'user_permissions', 'Action', NULL, NULL),
(8, 3, 'manage_user_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@manage_user_permissions', 'PermissionsController', 'manage_user_permissions', 'Action', NULL, NULL),
(9, 3, 'sync', 'App\\Http\\Controllers\\Admin\\PermissionsController@sync', 'PermissionsController', 'sync', 'Action', NULL, NULL),
(10, 3, 'manage_role_all_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@manage_role_all_permissions', 'PermissionsController', 'manage_role_all_permissions', 'Action', NULL, NULL),
(11, 3, 'manage_role_permission', 'App\\Http\\Controllers\\Admin\\PermissionsController@manage_role_permission', 'PermissionsController', 'manage_role_permission', 'Action', NULL, NULL),
(12, 3, 'manage_user_permission', 'App\\Http\\Controllers\\Admin\\PermissionsController@manage_user_permission', 'PermissionsController', 'manage_user_permission', 'Action', NULL, NULL),
(13, 3, 'delete_user_permission', 'App\\Http\\Controllers\\Admin\\PermissionsController@delete_user_permission', 'PermissionsController', 'delete_user_permission', 'Action', NULL, NULL),
(14, 3, 'remove_user_all_permission', 'App\\Http\\Controllers\\Admin\\PermissionsController@remove_user_all_permission', 'PermissionsController', 'remove_user_all_permission', 'Action', NULL, NULL),
(15, 3, 'temp_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@temp_permissions', 'PermissionsController', 'temp_permissions', 'Action', NULL, NULL),
(16, 3, 'generate_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@generate_permissions', 'PermissionsController', 'generate_permissions', 'Action', NULL, NULL),
(17, 3, 'add_to_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@add_to_permissions', 'PermissionsController', 'add_to_permissions', 'Action', NULL, NULL),
(18, 3, 'permission_by_action', 'App\\Http\\Controllers\\Admin\\PermissionsController@permission_by_action', 'PermissionsController', 'permission_by_action', 'Action', NULL, NULL),
(19, 3, 'get_users_by_role', 'App\\Http\\Controllers\\Admin\\PermissionsController@get_users_by_role', 'PermissionsController', 'get_users_by_role', 'Action', NULL, NULL),
(20, 3, 'get_permission_by_user', 'App\\Http\\Controllers\\Admin\\PermissionsController@get_permission_by_user', 'PermissionsController', 'get_permission_by_user', 'Action', NULL, NULL),
(21, 2, 'App\\Http\\Controllers\\Admin\\UsersController', 'App\\Http\\Controllers\\Admin\\UsersController@dashboard', 'UsersController', NULL, 'Controller', NULL, NULL),
(22, 21, 'dashboard', 'App\\Http\\Controllers\\Admin\\UsersController@dashboard', 'UsersController', 'dashboard', 'Action', NULL, NULL),
(23, 21, 'index', 'App\\Http\\Controllers\\Admin\\UsersController@index', 'UsersController', 'index', 'Action', NULL, NULL),
(24, 21, 'create', 'App\\Http\\Controllers\\Admin\\UsersController@create', 'UsersController', 'create', 'Action', NULL, NULL),
(25, 21, 'store', 'App\\Http\\Controllers\\Admin\\UsersController@store', 'UsersController', 'store', 'Action', NULL, NULL),
(26, 21, 'edit', 'App\\Http\\Controllers\\Admin\\UsersController@edit', 'UsersController', 'edit', 'Action', NULL, NULL),
(27, 21, 'update', 'App\\Http\\Controllers\\Admin\\UsersController@update', 'UsersController', 'update', 'Action', NULL, NULL),
(28, 21, 'destroy', 'App\\Http\\Controllers\\Admin\\UsersController@destroy', 'UsersController', 'destroy', 'Action', NULL, NULL),
(29, 21, 'update_password', 'App\\Http\\Controllers\\Admin\\UsersController@update_password', 'UsersController', 'update_password', 'Action', NULL, NULL),
(30, 21, 'update_user_roles', 'App\\Http\\Controllers\\Admin\\UsersController@update_user_roles', 'UsersController', 'update_user_roles', 'Action', NULL, NULL),
(31, 21, 'profile', 'App\\Http\\Controllers\\Admin\\UsersController@profile', 'UsersController', 'profile', 'Action', NULL, NULL),
(32, 2, 'App\\Http\\Controllers\\Admin\\RolesController', 'App\\Http\\Controllers\\Admin\\RolesController@index', 'RolesController', NULL, 'Controller', NULL, NULL),
(33, 32, 'index', 'App\\Http\\Controllers\\Admin\\RolesController@index', 'RolesController', 'index', 'Action', NULL, NULL),
(34, 32, 'create', 'App\\Http\\Controllers\\Admin\\RolesController@create', 'RolesController', 'create', 'Action', NULL, NULL),
(35, 32, 'store', 'App\\Http\\Controllers\\Admin\\RolesController@store', 'RolesController', 'store', 'Action', NULL, NULL),
(36, 32, 'edit', 'App\\Http\\Controllers\\Admin\\RolesController@edit', 'RolesController', 'edit', 'Action', NULL, NULL),
(37, 32, 'update', 'App\\Http\\Controllers\\Admin\\RolesController@update', 'RolesController', 'update', 'Action', NULL, NULL),
(38, 32, 'destroy', 'App\\Http\\Controllers\\Admin\\RolesController@destroy', 'RolesController', 'destroy', 'Action', NULL, NULL),
(39, 2, 'App\\Http\\Controllers\\Admin\\BlogsController', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_index', 'BlogsController', NULL, 'Controller', NULL, NULL),
(40, 39, 'admin_index', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_index', 'BlogsController', 'admin_index', 'Action', NULL, NULL),
(41, 39, 'admin_create', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_create', 'BlogsController', 'admin_create', 'Action', NULL, NULL),
(42, 39, 'admin_store', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_store', 'BlogsController', 'admin_store', 'Action', NULL, NULL),
(43, 39, 'admin_edit', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_edit', 'BlogsController', 'admin_edit', 'Action', NULL, NULL),
(44, 39, 'admin_update', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_update', 'BlogsController', 'admin_update', 'Action', NULL, NULL),
(45, 39, 'admin_destroy', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_destroy', 'BlogsController', 'admin_destroy', 'Action', NULL, NULL),
(46, 39, 'admin_trash_status', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_trash_status', 'BlogsController', 'admin_trash_status', 'Action', NULL, NULL),
(47, 39, 'remove_feature_image', 'App\\Http\\Controllers\\Admin\\BlogsController@remove_feature_image', 'BlogsController', 'remove_feature_image', 'Action', NULL, NULL),
(48, 2, 'App\\Http\\Controllers\\Admin\\BlogCategoriesController', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@list', 'BlogCategoriesController', NULL, 'Controller', NULL, NULL),
(49, 48, 'list', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@list', 'BlogCategoriesController', 'list', 'Action', NULL, NULL),
(50, 48, 'admin_index', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_index', 'BlogCategoriesController', 'admin_index', 'Action', NULL, NULL),
(51, 48, 'admin_create', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_create', 'BlogCategoriesController', 'admin_create', 'Action', NULL, NULL),
(52, 48, 'admin_store', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_store', 'BlogCategoriesController', 'admin_store', 'Action', NULL, NULL),
(53, 48, 'admin_edit', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_edit', 'BlogCategoriesController', 'admin_edit', 'Action', NULL, NULL),
(54, 48, 'admin_update', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_update', 'BlogCategoriesController', 'admin_update', 'Action', NULL, NULL),
(55, 48, 'admin_destroy', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_destroy', 'BlogCategoriesController', 'admin_destroy', 'Action', NULL, NULL),
(56, 48, 'admin_trash_status', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_trash_status', 'BlogCategoriesController', 'admin_trash_status', 'Action', NULL, NULL),
(57, 48, 'admin_ajax_add_category', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_ajax_add_category', 'BlogCategoriesController', 'admin_ajax_add_category', 'Action', NULL, NULL),
(58, 48, 'admin_moveup', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_moveup', 'BlogCategoriesController', 'admin_moveup', 'Action', NULL, NULL),
(59, 48, 'admin_movedown', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_movedown', 'BlogCategoriesController', 'admin_movedown', 'Action', NULL, NULL),
(60, 2, 'App\\Http\\Controllers\\Admin\\PagesController', 'App\\Http\\Controllers\\Admin\\PagesController@admin_index', 'PagesController', NULL, 'Controller', NULL, NULL),
(61, 60, 'admin_index', 'App\\Http\\Controllers\\Admin\\PagesController@admin_index', 'PagesController', 'admin_index', 'Action', NULL, NULL),
(62, 60, 'admin_create', 'App\\Http\\Controllers\\Admin\\PagesController@admin_create', 'PagesController', 'admin_create', 'Action', NULL, NULL),
(63, 60, 'admin_store', 'App\\Http\\Controllers\\Admin\\PagesController@admin_store', 'PagesController', 'admin_store', 'Action', NULL, NULL),
(64, 60, 'admin_edit', 'App\\Http\\Controllers\\Admin\\PagesController@admin_edit', 'PagesController', 'admin_edit', 'Action', NULL, NULL),
(65, 60, 'admin_update', 'App\\Http\\Controllers\\Admin\\PagesController@admin_update', 'PagesController', 'admin_update', 'Action', NULL, NULL),
(66, 60, 'admin_destroy', 'App\\Http\\Controllers\\Admin\\PagesController@admin_destroy', 'PagesController', 'admin_destroy', 'Action', NULL, NULL),
(67, 60, 'admin_trash_status', 'App\\Http\\Controllers\\Admin\\PagesController@admin_trash_status', 'PagesController', 'admin_trash_status', 'Action', NULL, NULL),
(68, 60, 'remove_feature_image', 'App\\Http\\Controllers\\Admin\\PagesController@remove_feature_image', 'PagesController', 'remove_feature_image', 'Action', NULL, NULL),
(69, 2, 'App\\Http\\Controllers\\Admin\\MenusController', 'App\\Http\\Controllers\\Admin\\MenusController@admin_index', 'MenusController', NULL, 'Controller', NULL, NULL),
(70, 69, 'admin_index', 'App\\Http\\Controllers\\Admin\\MenusController@admin_index', 'MenusController', 'admin_index', 'Action', NULL, NULL),
(71, 69, 'admin_create', 'App\\Http\\Controllers\\Admin\\MenusController@admin_create', 'MenusController', 'admin_create', 'Action', NULL, NULL),
(72, 69, 'admin_store', 'App\\Http\\Controllers\\Admin\\MenusController@admin_store', 'MenusController', 'admin_store', 'Action', NULL, NULL),
(73, 69, 'admin_edit', 'App\\Http\\Controllers\\Admin\\MenusController@admin_edit', 'MenusController', 'admin_edit', 'Action', NULL, NULL),
(74, 69, 'admin_update', 'App\\Http\\Controllers\\Admin\\MenusController@admin_update', 'MenusController', 'admin_update', 'Action', NULL, NULL),
(75, 69, 'admin_destroy', 'App\\Http\\Controllers\\Admin\\MenusController@admin_destroy', 'MenusController', 'admin_destroy', 'Action', NULL, NULL),
(76, 69, 'ajax_menu_item_delete', 'App\\Http\\Controllers\\Admin\\MenusController@ajax_menu_item_delete', 'MenusController', 'ajax_menu_item_delete', 'Action', NULL, NULL),
(77, 69, 'admin_select_menu', 'App\\Http\\Controllers\\Admin\\MenusController@admin_select_menu', 'MenusController', 'admin_select_menu', 'Action', NULL, NULL),
(78, 69, 'ajax_add_link', 'App\\Http\\Controllers\\Admin\\MenusController@ajax_add_link', 'MenusController', 'ajax_add_link', 'Action', NULL, NULL),
(79, 69, 'ajax_add_page', 'App\\Http\\Controllers\\Admin\\MenusController@ajax_add_page', 'MenusController', 'ajax_add_page', 'Action', NULL, NULL),
(80, 69, 'search_menus', 'App\\Http\\Controllers\\Admin\\MenusController@search_menus', 'MenusController', 'search_menus', 'Action', NULL, NULL),
(81, 2, 'App\\Http\\Controllers\\Admin\\ConfigurationsController', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_index', 'ConfigurationsController', NULL, 'Controller', NULL, NULL),
(82, 81, 'admin_index', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_index', 'ConfigurationsController', 'admin_index', 'Action', NULL, NULL),
(83, 81, 'admin_add', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_add', 'ConfigurationsController', 'admin_add', 'Action', NULL, NULL),
(84, 81, 'admin_edit', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_edit', 'ConfigurationsController', 'admin_edit', 'Action', NULL, NULL),
(85, 81, 'admin_delete', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_delete', 'ConfigurationsController', 'admin_delete', 'Action', NULL, NULL),
(86, 81, 'admin_view', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_view', 'ConfigurationsController', 'admin_view', 'Action', NULL, NULL),
(87, 81, 'admin_prefix', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_prefix', 'ConfigurationsController', 'admin_prefix', 'Action', NULL, NULL),
(88, 81, 'admin_change_theme', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_change_theme', 'ConfigurationsController', 'admin_change_theme', 'Action', NULL, NULL),
(89, 81, 'admin_change', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_change', 'ConfigurationsController', 'admin_change', 'Action', NULL, NULL),
(90, 81, 'admin_moveup', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_moveup', 'ConfigurationsController', 'admin_moveup', 'Action', NULL, NULL),
(91, 81, 'admin_movedown', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_movedown', 'ConfigurationsController', 'admin_movedown', 'Action', NULL, NULL),
(92, 81, 'save_permalink', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@save_permalink', 'ConfigurationsController', 'save_permalink', 'Action', NULL, NULL),
(93, 81, 'upload_editor_image', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@upload_editor_image', 'ConfigurationsController', 'upload_editor_image', 'Action', NULL, NULL),
(94, 1, 'Front', 'App\\Http\\Controllers\\Front\\HomeController@blogcategory', NULL, NULL, 'App', NULL, NULL),
(95, 94, 'App\\Http\\Controllers\\Front\\HomeController', 'App\\Http\\Controllers\\Front\\HomeController@blogcategory', 'HomeController', NULL, 'Controller', NULL, NULL),
(96, 95, 'blogcategory', 'App\\Http\\Controllers\\Front\\HomeController@blogcategory', 'HomeController', 'blogcategory', 'Action', NULL, NULL),
(97, 95, 'detail', 'App\\Http\\Controllers\\Front\\HomeController@detail', 'HomeController', 'detail', 'Action', NULL, NULL),
(98, 0, 'Installation 0', 'Modules\\Installation\\Http\\Controllers\\WelcomeController@welcome', NULL, NULL, 'Module', NULL, NULL),
(99, 98, 'Http 98', 'Modules\\Installation\\Http\\Controllers\\WelcomeController@welcome', NULL, NULL, 'Module', NULL, NULL),
(100, 99, 'Controllers 99', 'Modules\\Installation\\Http\\Controllers\\WelcomeController@welcome', NULL, NULL, 'Module', NULL, NULL),
(101, 100, 'Modules\\Installation\\Http\\Controllers\\WelcomeController', 'Modules\\Installation\\Http\\Controllers\\WelcomeController@welcome', 'WelcomeController', NULL, 'Controller', NULL, NULL),
(102, 101, 'welcome', 'Modules\\Installation\\Http\\Controllers\\WelcomeController@welcome', 'WelcomeController', 'welcome', 'Action', NULL, NULL),
(103, 100, 'Modules\\Installation\\Http\\Controllers\\EnvironmentController', 'Modules\\Installation\\Http\\Controllers\\EnvironmentController@environmentMenu', 'EnvironmentController', NULL, 'Controller', NULL, NULL),
(104, 103, 'environmentMenu', 'Modules\\Installation\\Http\\Controllers\\EnvironmentController@environmentMenu', 'EnvironmentController', 'environmentMenu', 'Action', NULL, NULL),
(105, 103, 'environmentWizard', 'Modules\\Installation\\Http\\Controllers\\EnvironmentController@environmentWizard', 'EnvironmentController', 'environmentWizard', 'Action', NULL, NULL),
(106, 103, 'saveWizard', 'Modules\\Installation\\Http\\Controllers\\EnvironmentController@saveWizard', 'EnvironmentController', 'saveWizard', 'Action', NULL, NULL),
(107, 103, 'environmentClassic', 'Modules\\Installation\\Http\\Controllers\\EnvironmentController@environmentClassic', 'EnvironmentController', 'environmentClassic', 'Action', NULL, NULL),
(108, 103, 'saveClassic', 'Modules\\Installation\\Http\\Controllers\\EnvironmentController@saveClassic', 'EnvironmentController', 'saveClassic', 'Action', NULL, NULL),
(109, 100, 'Modules\\Installation\\Http\\Controllers\\RequirementsController', 'Modules\\Installation\\Http\\Controllers\\RequirementsController@requirements', 'RequirementsController', NULL, 'Controller', NULL, NULL),
(110, 109, 'requirements', 'Modules\\Installation\\Http\\Controllers\\RequirementsController@requirements', 'RequirementsController', 'requirements', 'Action', NULL, NULL),
(111, 100, 'Modules\\Installation\\Http\\Controllers\\PermissionsController', 'Modules\\Installation\\Http\\Controllers\\PermissionsController@permissions', 'PermissionsController', NULL, 'Controller', NULL, NULL),
(112, 111, 'permissions', 'Modules\\Installation\\Http\\Controllers\\PermissionsController@permissions', 'PermissionsController', 'permissions', 'Action', NULL, NULL),
(113, 100, 'Modules\\Installation\\Http\\Controllers\\DatabaseController', 'Modules\\Installation\\Http\\Controllers\\DatabaseController@database', 'DatabaseController', NULL, 'Controller', NULL, NULL),
(114, 113, 'database', 'Modules\\Installation\\Http\\Controllers\\DatabaseController@database', 'DatabaseController', 'database', 'Action', NULL, NULL),
(115, 100, 'Modules\\Installation\\Http\\Controllers\\AdminSetupController', 'Modules\\Installation\\Http\\Controllers\\AdminSetupController@admin', 'AdminSetupController', NULL, 'Controller', NULL, NULL),
(116, 115, 'admin', 'Modules\\Installation\\Http\\Controllers\\AdminSetupController@admin', 'AdminSetupController', 'admin', 'Action', NULL, NULL),
(117, 115, 'saveAdmin', 'Modules\\Installation\\Http\\Controllers\\AdminSetupController@saveAdmin', 'AdminSetupController', 'saveAdmin', 'Action', NULL, NULL),
(118, 100, 'Modules\\Installation\\Http\\Controllers\\FinalController', 'Modules\\Installation\\Http\\Controllers\\FinalController@finish', 'FinalController', NULL, 'Controller', NULL, NULL),
(119, 118, 'finish', 'Modules\\Installation\\Http\\Controllers\\FinalController@finish', 'FinalController', 'finish', 'Action', NULL, NULL),
(120, 100, 'Modules\\Installation\\Http\\Controllers\\UpdateController', 'Modules\\Installation\\Http\\Controllers\\UpdateController@welcome', 'UpdateController', NULL, 'Controller', NULL, NULL),
(121, 120, 'welcome', 'Modules\\Installation\\Http\\Controllers\\UpdateController@welcome', 'UpdateController', 'welcome', 'Action', NULL, NULL),
(122, 120, 'overview', 'Modules\\Installation\\Http\\Controllers\\UpdateController@overview', 'UpdateController', 'overview', 'Action', NULL, NULL),
(123, 120, 'database', 'Modules\\Installation\\Http\\Controllers\\UpdateController@database', 'UpdateController', 'database', 'Action', NULL, NULL),
(124, 120, 'finish', 'Modules\\Installation\\Http\\Controllers\\UpdateController@finish', 'UpdateController', 'finish', 'Action', NULL, NULL),
(125, 95, 'author', 'App\\Http\\Controllers\\Front\\HomeController@author', 'HomeController', 'author', 'Action', NULL, NULL),
(126, 95, 'blogtag', 'App\\Http\\Controllers\\Front\\HomeController@blogtag', 'HomeController', 'blogtag', 'Action', NULL, NULL),
(127, 95, 'search', 'App\\Http\\Controllers\\Front\\HomeController@search', 'HomeController', 'search', 'Action', NULL, NULL),
(128, 95, 'all', 'App\\Http\\Controllers\\Front\\HomeController@all', 'HomeController', 'all', 'Action', NULL, NULL),
(129, 2, 'App\\Http\\Controllers\\Admin\\DashboardController', 'App\\Http\\Controllers\\Admin\\DashboardController@dashboard', 'DashboardController', NULL, 'Controller', NULL, NULL),
(130, 129, 'dashboard', 'App\\Http\\Controllers\\Admin\\DashboardController@dashboard', 'DashboardController', 'dashboard', 'Action', NULL, NULL),
(131, 2, 'App\\Http\\Controllers\\Admin\\BlogTagsController', 'App\\Http\\Controllers\\Admin\\BlogTagsController@list', 'BlogTagsController', NULL, 'Controller', NULL, NULL),
(132, 131, 'list', 'App\\Http\\Controllers\\Admin\\BlogTagsController@list', 'BlogTagsController', 'list', 'Action', NULL, NULL),
(133, 131, 'admin_index', 'App\\Http\\Controllers\\Admin\\BlogTagsController@admin_index', 'BlogTagsController', 'admin_index', 'Action', NULL, NULL),
(134, 131, 'admin_create', 'App\\Http\\Controllers\\Admin\\BlogTagsController@admin_create', 'BlogTagsController', 'admin_create', 'Action', NULL, NULL),
(135, 131, 'admin_store', 'App\\Http\\Controllers\\Admin\\BlogTagsController@admin_store', 'BlogTagsController', 'admin_store', 'Action', NULL, NULL),
(136, 131, 'admin_edit', 'App\\Http\\Controllers\\Admin\\BlogTagsController@admin_edit', 'BlogTagsController', 'admin_edit', 'Action', NULL, NULL),
(137, 131, 'admin_update', 'App\\Http\\Controllers\\Admin\\BlogTagsController@admin_update', 'BlogTagsController', 'admin_update', 'Action', NULL, NULL),
(138, 131, 'admin_destroy', 'App\\Http\\Controllers\\Admin\\BlogTagsController@admin_destroy', 'BlogTagsController', 'admin_destroy', 'Action', NULL, NULL),
(139, 95, 'blogarchive', 'App\\Http\\Controllers\\Front\\HomeController@blogarchive', 'HomeController', 'blogarchive', 'Action', NULL, NULL),
(140, 95, 'blogslist', 'App\\Http\\Controllers\\Front\\HomeController@blogslist', 'HomeController', 'blogslist', 'Action', NULL, NULL),
(141, 21, 'remove_user_image', 'App\\Http\\Controllers\\Admin\\UsersController@remove_user_image', 'UsersController', 'remove_user_image', 'Action', NULL, NULL),
(142, 95, 'contact', 'App\\Http\\Controllers\\Front\\HomeController@contact', 'HomeController', 'contact', 'Action', NULL, NULL),
(143, 81, 'remove_config_image', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@remove_config_image', 'ConfigurationsController', 'remove_config_image', 'Action', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `post_count` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `parent_id`, `title`, `slug`, `description`, `order`, `post_count`, `type`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Services 1', 'services-1', NULL, 26, NULL, 'categories', '2023-06-07 07:10:04', '2023-06-07 07:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `term_relationships`
--

CREATE TABLE `term_relationships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `term_relationships`
--

INSERT INTO `term_relationships` (`id`, `object_id`, `term_id`, `created_at`, `updated_at`) VALUES
(1, 17, 1, '2023-06-07 07:10:04', '2023-06-07 07:10:04'),
(2, 18, 1, '2023-06-07 07:10:04', '2023-06-07 07:10:04'),
(3, 19, 1, '2023-06-07 07:10:04', '2023-06-07 07:10:04'),
(4, 20, 1, '2023-06-07 07:10:04', '2023-06-07 07:10:04'),
(5, 21, 1, '2023-06-07 07:10:04', '2023-06-07 07:10:04'),
(6, 22, 1, '2023-06-07 07:10:04', '2023-06-07 07:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_notification_config`
--

CREATE TABLE `user_notification_config` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `notification_config_id` bigint(20) UNSIGNED NOT NULL,
  `notification_types` enum('A','B') NOT NULL COMMENT 'Type-A 1- Email Type-B 2-Header Notification 3-Popup Notification 4-Mobile Notification',
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=Inactive, 1=Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_blog_categories`
--
ALTER TABLE `blog_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_blog_categories_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_blog_categories_blog_category_id_foreign` (`blog_category_id`);

--
-- Indexes for table `blog_blog_tags`
--
ALTER TABLE `blog_blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_blog_tags_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_blog_tags_blog_tag_id_foreign` (`blog_tag_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `blog_metas`
--
ALTER TABLE `blog_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_metas_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `blog_seos`
--
ALTER TABLE `blog_seos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_seos_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_tags_user_id_foreign` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_config`
--
ALTER TABLE `notification_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_templates_notification_config_id_foreign` (`notification_config_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_metas`
--
ALTER TABLE `page_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_metas_page_id_foreign` (`page_id`);

--
-- Indexes for table `page_seos`
--
ALTER TABLE `page_seos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_seos_page_id_foreign` (`page_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`),
  ADD KEY `permissions_temp_permission_id_foreign` (`temp_permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `temp_permissions`
--
ALTER TABLE `temp_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term_relationships`
--
ALTER TABLE `term_relationships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_notification_config`
--
ALTER TABLE `user_notification_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_notification_config_user_id_foreign` (`user_id`),
  ADD KEY `user_notification_config_notification_config_id_foreign` (`notification_config_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `blog_blog_categories`
--
ALTER TABLE `blog_blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `blog_blog_tags`
--
ALTER TABLE `blog_blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `blog_metas`
--
ALTER TABLE `blog_metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `blog_seos`
--
ALTER TABLE `blog_seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification_config`
--
ALTER TABLE `notification_config`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `page_metas`
--
ALTER TABLE `page_metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `page_seos`
--
ALTER TABLE `page_seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `temp_permissions`
--
ALTER TABLE `temp_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `term_relationships`
--
ALTER TABLE `term_relationships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_notification_config`
--
ALTER TABLE `user_notification_config`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_blog_categories`
--
ALTER TABLE `blog_blog_categories`
  ADD CONSTRAINT `blog_blog_categories_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blog_blog_categories_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog_blog_tags`
--
ALTER TABLE `blog_blog_tags`
  ADD CONSTRAINT `blog_blog_tags_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blog_blog_tags_blog_tag_id_foreign` FOREIGN KEY (`blog_tag_id`) REFERENCES `blog_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD CONSTRAINT `blog_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog_metas`
--
ALTER TABLE `blog_metas`
  ADD CONSTRAINT `blog_metas_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog_seos`
--
ALTER TABLE `blog_seos`
  ADD CONSTRAINT `blog_seos_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD CONSTRAINT `blog_tags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD CONSTRAINT `notification_templates_notification_config_id_foreign` FOREIGN KEY (`notification_config_id`) REFERENCES `notification_config` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_metas`
--
ALTER TABLE `page_metas`
  ADD CONSTRAINT `page_metas_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page_seos`
--
ALTER TABLE `page_seos`
  ADD CONSTRAINT `page_seos_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_temp_permission_id_foreign` FOREIGN KEY (`temp_permission_id`) REFERENCES `temp_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_notification_config`
--
ALTER TABLE `user_notification_config`
  ADD CONSTRAINT `user_notification_config_notification_config_id_foreign` FOREIGN KEY (`notification_config_id`) REFERENCES `notification_config` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_notification_config_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
