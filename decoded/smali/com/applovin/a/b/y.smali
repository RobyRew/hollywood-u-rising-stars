.class Lcom/applovin/a/b/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/x;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/x;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/y;->a:Lcom/applovin/a/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/applovin/a/b/y;->a:Lcom/applovin/a/b/x;

    invoke-static {v0}, Lcom/applovin/a/b/x;->a(Lcom/applovin/a/b/x;)Lcom/applovin/a/b/e;

    move-result-object v0

    sget-object v1, Lcom/applovin/a/b/bb;->ab:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/a/b/y;->a:Lcom/applovin/a/b/x;

    invoke-virtual {v1}, Lcom/applovin/a/b/x;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/applovin/a/b/y;->a:Lcom/applovin/a/b/x;

    invoke-static {v1}, Lcom/applovin/a/b/x;->a(Lcom/applovin/a/b/x;)Lcom/applovin/a/b/e;

    move-result-object v1

    sget-object v3, Lcom/applovin/a/b/bb;->ag:Lcom/applovin/a/b/bd;

    invoke-virtual {v1, v3}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v3, Lcom/applovin/adview/AppLovinConfirmationActivity;

    iget-object v4, p0, Lcom/applovin/a/b/y;->a:Lcom/applovin/a/b/x;

    invoke-static {v4}, Lcom/applovin/a/b/x;->b(Lcom/applovin/a/b/x;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/applovin/a/b/cy;->a(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/applovin/a/b/y;->a:Lcom/applovin/a/b/x;

    invoke-static {v4}, Lcom/applovin/a/b/x;->b(Lcom/applovin/a/b/x;)Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/applovin/adview/AppLovinConfirmationActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "dialog_title"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "dialog_body"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "dialog_button_text"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/applovin/a/b/y;->a:Lcom/applovin/a/b/x;

    invoke-static {v0}, Lcom/applovin/a/b/x;->b(Lcom/applovin/a/b/x;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/b/y;->a:Lcom/applovin/a/b/x;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/a/b/x;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/y;->a:Lcom/applovin/a/b/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/applovin/a/b/x;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
