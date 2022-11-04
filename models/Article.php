<?php

namespace Models;

class Article extends Model
{
    private $article_id, $title, $content;

    private function validate()
    {
        $errors = [];

        if (empty($this->title) && empty($this->content)) {
            $errors[] = "Les champs ne peuvent pas être vide !";
        } else {
            if (strlen($this->title) < 5 || strlen($this->title) > 80) {
                $errors[] = "Le titre de l'article doit contenir entre 5 et 80 caractères.";
            }

            if (strlen($this->content) < 10) {
                $errors[] = "La déscription du sujet doit contenir au moins 10 caractères.";
            }
        }

        return  $errors;
    }



    /**
     * Get the value of title
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * Set the value of title
     *
     * @return  self
     */
    public function setTitle($title)
    {
        $this->title = htmlspecialchars(trim($title));

        return $this;
    }

    /**
     * Get the value of content
     */
    public function getContent()
    {
        return $this->content;
    }

    /**
     * Set the value of content
     *
     * @return  self
     */
    public function setContent($content)
    {
        $this->content = htmlspecialchars(trim($content));

        return $this;
    }

    /**
     * Get the value of errors
     */
    public function getErrors()
    {
        return $this->validate();
    }
}
