<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Config') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            @if(session('message'))
            <div class="bg-teal-100 border-t-4 border-teal-500 rounded-b text-teal-900 px-4 py-3 shadow-md mb-4" role="alert">
                <div class="flex">
                    <div class="py-1"><svg class="fill-current h-6 w-6 text-teal-500 mr-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                            <path d="M2.93 17.07A10 10 0 1 1 17.07 2.93 10 10 0 0 1 2.93 17.07zm12.73-1.41A8 8 0 1 0 4.34 4.34a8 8 0 0 0 11.32 11.32zM9 11V9h2v6H9v-4zm0-6h2v2H9V5z" />
                        </svg></div>
                    <div>
                        <p class="font-bold">{{ session('message') }}</p>
                    </div>
                </div>
            </div>
            @endif


            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    <p class="block mb-2 w-full">User Config</p>

                    <form method="POST" action="{{ route('update') }}">
                        @csrf

                        <!-- Name -->
                        <div>
                            <x-input-label for="name" :value="__('Name')" />

                            <x-text-input id="name" class="block mt-1 w-full" type="text" name="name" :value="Auth::user()->name" required autofocus />

                            <x-input-error :messages="$errors->get('name')" class="mt-2" />
                        </div>

                        <!-- SurName -->
                        <div class="mt-4">
                            <x-input-label for="surname" :value="__('Surname')" />

                            <x-text-input id="surname" class="block mt-1 w-full" type="text" name="surname" :value="Auth::user()->surname" required autofocus />

                            <x-input-error :messages="$errors->get('surname')" class="mt-2" />
                        </div>

                        <!-- nick -->
                        <div class="mt-4">
                            <x-input-label for="nick" :value="__('Nick')" />

                            <x-text-input id="nick" class="block mt-1 w-full" type="text" name="nick" :value="Auth::user()->nick" required autofocus />

                            <x-input-error :messages="$errors->get('nick')" class="mt-2" />
                        </div>

                        <!-- Email Address -->
                        <div class="mt-4">
                            <x-input-label for="email" :value="__('Email')" />

                            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="Auth::user()->email" required />

                            <x-input-error :messages="$errors->get('email')" class="mt-2" />
                        </div>


                        <div class="flex items-center justify-end mt-4">

                            <x-primary-button class="ml-4">
                                {{ __('Save changes') }}
                            </x-primary-button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>