package com.ruchika.hangman.responses;

import com.ruchika.hangman.model.User;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResetPasswordResponse {

    private User user;

    public ResetPasswordResponse(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
