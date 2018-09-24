<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class TestArtisan extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'learn_laravel:console {arguments?}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'learn how to customize commands';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        //
        $this->info('test Hello'.$this->argument('arguments'));
    }
}
