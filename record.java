public class Record{

	void addExercise(int exercise_type_id, int count, int competition_id){
		// this should be used to add a new record
	}

	void exists(int hipchat_id){
		// this should be used to check if the user exists, and if not, should be created
	}

	void scoreCount(int hipchat_id, int competition_id){
		// this should be used to find what the actual score is for a user
	}

	void lineItems(int hipchat_id, int competition_id, date repsSince){
		//this should be used to fetch and show all of the line items for a user, not just a count
	}

}