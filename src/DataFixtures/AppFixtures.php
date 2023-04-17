<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        //1. Génerer une nouvelle instance de l'entité
        $user = new User();
        $user
            ->setEmail("exemple@mail.com")
            ->setPassword("exemple");

        $manager->persist($user);
        $manager->flush();
    }
}
