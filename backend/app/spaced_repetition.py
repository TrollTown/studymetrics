# Spaced repetition ends after three times
    #Day: 1, 3, 6 after start date

#if MasteredQ == False and Attempt < 3 --> give question

def selectRevisionQ(studentID):
    studentQHistory = getHistoryByStudentID(studentID)  #array of Tuples

    #Tuples I'm interested in
        # index 3: attempts
        # index 4: masteredQ
    revision = [0] * 5

    counter = 0
    for question in studentQHistory:
        questionID = question[0]
        attempts = question[3]  # integer
        masteredQ = question[4] # boolean

        if (counter >= 5):
            break
        if (masteredQ == False and attempts < 3):
            revision[counter] = questionID
            counter += 1

    return revision
