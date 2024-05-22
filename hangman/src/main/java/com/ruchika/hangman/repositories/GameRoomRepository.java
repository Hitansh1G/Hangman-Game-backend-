package com.ruchika.hangman.repositories;

import com.ruchika.hangman.model.GameRoom;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GameRoomRepository extends JpaRepository<GameRoom, Long> {
    GameRoom findByRoomId(String roomId);
}
