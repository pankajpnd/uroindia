<body>

    <!-- Preloader -->
    <div class="loader">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Preloader -->

    <!-- Header Top -->
    <div class="header-top">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-sm-4 col-lg-4">
                    <div class="header-top-item">
                        <div class="header-top-left">
                            <ul>
                                <li>
                                    <a href="tel:+07554332322">
                                        <i class="icofont-ui-call"></i>
                                        Call : +91-9893589861
                                    </a>
                                </li>
                                <!--<li>
                                    <a href="mailto:hello@medsev.com">
                                        <i class="icofont-ui-message"></i>
                                        drrajeshpatel08@rediffmail.com
                                    </a>
                                </li>-->
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-lg-8">
                    <div class="header-top-item">
                        <div class="header-top-left">
                            <ul>

                                <li style="cursor:pointer" onclick="window.location.href = '<?= base_url('front/Register/doctors') ?>'">
                                    <i class="icofont-doctor"></i>
                                    For Doctor
                                </li>
                                <li style="cursor:pointer" onclick="window.location.href = '<?= base_url('front/Login') ?>'">
                                    <i class="icofont-businessman"></i>
                                    Post Job
                                </li>
                                <li style="cursor:pointer" onclick="window.location.href = '<?= base_url('front/Register') ?>'">
                                    <i class="icofont-hand-drag1"></i>
                                    Search Job
                                </li>
                                <li style="cursor:pointer" onclick="window.location.href = '<?= base_url('front/Register') ?>'">
                                    <i class="icofont-search-job"></i>
                                    Submit Resume
                                </li>
                                <?php $user = $this->ion_auth->user()->row();
                                if (!empty($user)) {
                                    ?>
                                
                                    <li class="dropdown">
                                        <a style="cursor:pointer;color:#d44326;" class="dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Welcome! <b><i class="icofont-user"></i> <?php echo ucwords($user->first_name . ' ' . $user->last_name); ?></b>
                                        </a>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <li class="dropdown-item" href="#">Profile</li>
                                            <li class="dropdown-item" href="#">Change Password</li>
                                            <li class="dropdown-item" href="#" onclick="window.location.href = '<?= base_url('front/Login/logout') ?>'">Logout</li>
                                        </ul>
                                    </li>
                                    <?php } else {
                                    ?>
                                    <li style="cursor:pointer;color:#d44326;" onclick="window.location.href = '<?= base_url('front/Login') ?>'">
                                        <i class="icofont-lock"></i>
                                        Login
                                    </li>
                                    <li style="cursor:pointer;color:#d44326;" onclick="window.location.href = '<?= base_url('front/Register/consultant') ?>'">
                                        <i class="icofont-sign-in"></i>
                                        Register
                                    </li>
<?php } ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Header Top -->

    <!-- Start Navbar Area -->
    <div class="navbar-area sticky-top">
        <!-- Menu For Mobile Device -->
        <div class="mobile-nav">
            <a href="index-2.html" class="logo">
                <img src="<?php bs() ?>assets/img/logo.png" alt="Logo">
            </a>
        </div>

        <!-- Menu For Desktop Device -->
        <div class="main-nav">
            <div class="container">
                <nav class="navbar navbar-expand-md navbar-light">
                    <a class="navbar-brand" href="<?= base_url() . 'front/home'; ?>">
                        <img src="<?php bs() ?>assets/img/logo.png" alt="Logo">
                    </a>

                    <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                        <ul class="navbar-nav">
<?php foreach ($top_menus as $tmenu) {
; ?>
                                <li class="nav-item">
                                    <a href="<?= base_url() . $tmenu->menu_pageurl ?>" class="nav-link active"><?php echo $tmenu->menu_title; ?></a>
                                </li>
<?php } ?>
                        </ul>
                        <div class="nav-srh">
                            <div class="search-toggle">
                                <button class="search-icon icon-search"><i class="icofont-search-1"></i></button>
                                <button class="search-icon icon-close"><i class="icofont-close"></i></button>
                            </div>
                            <div class="search-area">
                                <form>
                                    <input type="text" class="src-input" id="search-terms" placeholder="Search here..." />
                                    <button type="submit" name="submit" value="Go" class="search-icon"><i class="icofont-search-1"></i></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- End Navbar Area -->