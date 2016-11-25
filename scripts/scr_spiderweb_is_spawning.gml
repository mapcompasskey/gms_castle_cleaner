///scr_spiderweb_is_spawning()

/**
 * Spider Web: Is Spawning
 *
 * Whenever a spawned spider instance is destroyed, it will decrement the number
 * of spawned entities allowing this instance to spawn another spider.
 */

if ( ! dying)
{
    if (spawn_counter < spawn_maximum)
    {
        spawn_timer += global.TICK;
        
        // if the timer has ended
        if (spawn_timer >= spawn_time)
        {
            var pos_x = x;
            if (image_xscale == 1)
            {
                pos_x = (pos_x  + (sprite_get_width(sprite_index) / 2));
            }
            else
            {
                pos_x = (pos_x  - (sprite_get_width(sprite_index) / 2));
            }
            
            var pos_y = y;
            if (image_yscale == 1)
            {
                pos_y = (pos_y + (sprite_get_height(sprite_index) / 2));
            }
            else
            {
                pos_y = (pos_y - sprite_get_height(sprite_index));
            }
            
            // create a new spider
            var spider = instance_create(pos_x, pos_y, obj_spider);
            spider.spiderweb_id = id;
            
            // update spawn settings
            spawn_counter += 1;
            spawn_timer = 0;
        }
    }
}

