<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<!DOCTYPE html>
<html>

<head>  
	<title>Text Testimonial</title>
	<!-- ========== top navigation Start ========== -->
	<?php require("component/head.php"); ?>
</head>

<body>
	<div id="layout-wrapper">
		<!-- ========== top navigation Start ========== -->
		<?php require("component/topnavbar.php"); ?>
		<!-- ========== Left Sidebar Start ========== -->
		<?php require("component/sidenavbar.php"); ?>


		<div class="main-content">
			<div class="page-content">
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box d-sm-flex align-items-center justify-content-between">
								<h4 class="mb-sm-0 font-size-18">Home Page Text Testimonial</h4>
								<p class="flex-space-1"></p>
								<a class="btn btn-primary" id="addNew">Add Data</a>
							</div>
						</div>
					</div>
					<!-- end page title -->
					<!-- main content start here -->
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<table id="datatable" class="table table-bordered dt-responsive nowrap w-100">
										<thead>
											<tr>
												<th>S.No</th>
                                                <th>Customer Name</th>
                                                <th>Content</th>
                                                <th>Images</th>
                                                <th>Action</th>
											</tr>
										</thead>
										<tbody>

										</tbody>
									</table>

								</div>
							</div>
						</div> <!-- end col -->
					</div>
					<!-- main content ends here -->


					<!-- sample modal content -->
                    <div id="myModal" class="modal fade" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">

                                <!-- Heading -->
                                <div class="modal-header">
                                    <h5 class="modal-title" id="myModalLabel">Text Testimonial</h5>
                                </div>

                                <!-- Form -->
                                <form id="formModal">
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-lg-12">

                                                <!-- Title  -->
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Customer Name</label>
                                                    <input class="form-control" type="text" id="title" name="title" placeholder="Enter the Customer Name..!">
                                                    <h5 class="invalid-feedback title"></h5>
                                                </div>

                                                <!-- Content  -->
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Content</label>
                                                    <input class="form-control" type="text" id="content" name="content" placeholder="Enter the Content..!">
                                                    <h5 class="invalid-feedback content"></h5>
                                                </div>

                                                <!-- Image  -->
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Images</label>
                                                    <input type="file" class="form-control" id="image" name="image" accept=".png,.jpg,.jpeg,.gif" multiple>
                                                    <h5 class="invalid-feedback image"></h5>
                                                    <div id="uploaded_image"></div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary waves-effect" data-bs-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary waves-effect waves-light" id="formSubmit">Save </button>
                                    </div>
                                </form>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal-dialog -->
                    </div><!-- /.modal -->

				</div>
			</div>
			<!-- End Page-content -->
		</div>

	</div>


	<!-- ========== Footer Start ========== -->
	<?php require("component/footer.php"); ?>
	<!-- custom banner script js -->
	<script src="<?php echo base_url(); ?>custom/homePageTextTestimonial.js"></script>
</body>

</html>
