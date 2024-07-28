$(document).ready(function() {
	$("#trainerForm").hide();
	$("#closeForm").hide(); // Hide the close button initially

	$("#addTrainer").click(function() {
		$("#trainerForm").toggle();
		$("#closeForm").hide(); // Hide the close button if it was shown for editing
		if ($("#trainerForm").is(":visible")) {
			$("#addTrainer").text("Close");
		} else {
			$("#addTrainer").text("Add Trainer");
		}
	});

	$("#submit").click(function() {
		var id = $("#trainersId").val();
		var name = $("#name").val();
		var experience = $("#experience").val();
		var specialty = $("#specialty").val();
		var contactInfo = $("#contactInfo").val();

		// Check if all fields are filled
		if (name && experience && specialty && contactInfo) {
			var trainersDto = {
				"id": id,
				"name": name,
				"experience": experience,
				"specialty": specialty,
				"contactInfo": contactInfo
			};

			if (id == "") {
				alert("Save");
				console.log(trainersDto);
				$.ajax({
					url: "/gym-mgmt/trainers/saveTrainerDetails",
					type: "POST",
					dataType: 'json',
					contentType: "application/json",
					data: JSON.stringify(trainersDto),
					success: function(data) {
						if (data == true) {
							$("#successMessage").show(); // Show success message if response is true
							setTimeout(function() {
								$("#successMessage").hide();
								window.location.reload(); // Reload page after successful submission
							}, 2000); // Hide message after 2 seconds
						} else {
							alert("The trainer could not be saved."); // Show alert if data is not true
						}
					},
					error: function() {
						alert("An error occurred while saving the trainer."); // Show error if AJAX request fails
					}
				});
			} else {
				alert("Update");
				console.log(trainersDto);
				$.ajax({
					url: "/gym-mgmt/trainers/updateDetails",
					type: "POST",
					dataType: 'json',
					contentType: "application/json",
					data: JSON.stringify(trainersDto),
					success: function(data) {
						if (data == true) {
							$("#successMessage").show(); // Show success message
							setTimeout(function() {
								$("#successMessage").hide();
								window.location.reload(); // Reload page after successful submission
							}, 2000); // Hide message after 2 seconds
						} else {
							swal({
								title: "",
								text: "Trainer not updated.",
								type: "warning",
							});
						}
					},
					error: function() {
						alert("An error occurred while updating the trainer details.");
					}
				});
			}
		} else {
			alert("Please enter all fields."); // Show alert if any required field is empty
		}
	});

	function loadTrainerCardsForAdmin() {
		$.ajax({
			url: "/gym-mgmt/trainers/getAllTrainerDetails",
			type: "GET",
			dataType: "json",
			success: function(data) {
				var trainerCards = $("#trainerCardsForadmin");
				trainerCards.empty();

				$.each(data, function(index, trainer) {
					var card = $("<div>").addClass("card");
					card.append($("<h3>").text(trainer.name));
					card.append($("<p>").text("Experience: " + trainer.experience));
					card.append($("<p>").text("Specialty: " + trainer.specialty));
					card.append($("<p>").text("Contact Info: " + trainer.contactInfo));
					card.append('<button class="edit-trainer" data-id="' + trainer.id + '">Edit</button>');
					card.append('<button class="delete-trainer" data-id="' + trainer.id + '">Delete</button>');
					trainerCards.append(card);
				});

				$(document).on('click', '.edit-trainer', function(e) {
					e.preventDefault();
					var trainerId = $(this).data("id");
					getByID(trainerId);
				});

				$(document).on('click', '.delete-trainer', function(e) {
					e.preventDefault();
					var trainerId = $(this).data("id");
					deleteTrainer(trainerId);
				});
			},
			error: function() {
				alert("Failed to load trainers. Please try again.");
			}
		});
	}


	function loadTrainerCards() {
		$.ajax({
			url: "/gym-mgmt/trainers/getAllTrainerDetails",
			type: "GET",
			dataType: "json",
			success: function(data) {
				var trainerCards = $("#trainerCards");
				trainerCards.empty();

				$.each(data, function(index, trainer) {
					var card = $("<div>").addClass("card");
					card.append($("<h3>").text(trainer.name));
					card.append($("<p>").text("Experience: " + trainer.experience));
					card.append($("<p>").text("Specialty: " + trainer.specialty));
					card.append($("<p>").text("Contact Info: " + trainer.contactInfo));

					trainerCards.append(card);
				});
			},
			error: function() {
				alert("Failed to load trainers. Please try again.");
			}
		});
	}
	window.deleteTrainer = function(id) {
	    console.log("Deleting trainer with ID: " + id); // Debugging line
	    if (confirm("Are you sure you want to delete this trainer?")) {
	        $.ajax({
	            url: `/gym-mgmt/trainers/deleteTrainer/${id}`, // Ensure id is appended
	            type: "DELETE",
	            contentType: "application/json",
	            success: function(response) {
	                if (response) {
	                    alert("Trainer deleted successfully.");
	                    loadTrainerCards(); // Reload data without page reload
	                } else {
	                    alert("Failed to delete Trainer. Please try again.");
	                }
	            },
	            error: function(xhr, status, error) {
	                console.error("Error status: " + status);
	                console.error("Error details: " + error);
	                console.error("Response text: " + xhr.responseText);
	                alert("An error occurred while deleting the trainer.");
	            }
	        });
	    }
	}


	window.getByID = function(id) {
		$.ajax({
			url: "/gym-mgmt/trainers/getTrainerById",
			type: "GET",
			data: { id: id },
			success: function(data) {
				$("#trainersId").val(data.id);
				$("#name").val(data.name);
				$("#experience").val(data.experience);
				$("#specialty").val(data.specialty);
				$("#contactInfo").val(data.contactInfo);
				$("#trainerForm").show();
				$("#closeForm").show();
				$("#addTrainer").text("Close");
			},
			error: function() {
				alert("Failed to load trainer details. Please try again.");
			}
		});
	}

	$("#closeForm").click(function() {
		$("#trainerForm").hide();
		$("#closeForm").hide();
		$("#addTrainer").text("Add Trainer");
	});

	// Call functions to load data on page load
	loadTrainerCards();
	loadTrainerCardsForAdmin();
});

