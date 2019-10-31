#ifndef BALL_H
#define BALL_H

#include <pthread.h>

#include <guacamole/layer.h>

typedef struct ball_client_data {
    guac_layer* ball;

    int ball_x;
    int ball_y;

    int ball_velocity_x;
    int ball_velocity_y;

    pthread_t render_thread;
} ball_client_data;

#endif