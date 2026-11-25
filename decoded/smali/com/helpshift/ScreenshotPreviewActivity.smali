.class public Lcom/helpshift/ScreenshotPreviewActivity;
.super Lcom/helpshift/app/ActionBarActivity;
.source "SourceFile"

# interfaces
.implements Lcom/helpshift/f/c;


# instance fields
.field private a:Z

.field private b:Lcom/helpshift/f/b;

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/helpshift/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/ScreenshotPreviewActivity;->a:Z

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    const/16 v1, 0x7fbc

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/ScreenshotPreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 54
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    const-string/jumbo v1, "SCREENSHOT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string/jumbo v1, "screenshot_position"

    iget-object v2, p0, Lcom/helpshift/ScreenshotPreviewActivity;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "screenshot_position"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/helpshift/ScreenshotPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 45
    invoke-virtual {p0}, Lcom/helpshift/ScreenshotPreviewActivity;->finish()V

    .line 46
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/helpshift/app/ActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 59
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    const/16 v0, 0x7fbc

    if-ne p1, v0, :cond_0

    .line 60
    invoke-static {p0, p3}, Lcom/helpshift/e/b;->a(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/helpshift/ScreenshotPreviewActivity;->b:Lcom/helpshift/f/b;

    invoke-virtual {v1, v0}, Lcom/helpshift/f/b;->a(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/helpshift/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Lcom/helpshift/f/b;

    invoke-direct {v0, p0}, Lcom/helpshift/f/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/ScreenshotPreviewActivity;->b:Lcom/helpshift/f/b;

    .line 31
    iget-object v0, p0, Lcom/helpshift/ScreenshotPreviewActivity;->b:Lcom/helpshift/f/b;

    invoke-virtual {p0, v0}, Lcom/helpshift/ScreenshotPreviewActivity;->setContentView(Landroid/view/View;)V

    .line 33
    invoke-virtual {p0}, Lcom/helpshift/ScreenshotPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/ScreenshotPreviewActivity;->c:Landroid/os/Bundle;

    .line 34
    iget-object v0, p0, Lcom/helpshift/ScreenshotPreviewActivity;->b:Lcom/helpshift/f/b;

    invoke-virtual {v0, p0}, Lcom/helpshift/f/b;->a(Lcom/helpshift/f/c;)V

    .line 35
    iget-object v0, p0, Lcom/helpshift/ScreenshotPreviewActivity;->b:Lcom/helpshift/f/b;

    iget-object v1, p0, Lcom/helpshift/ScreenshotPreviewActivity;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "SCREENSHOT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/f/b;->a(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/helpshift/ScreenshotPreviewActivity;->b:Lcom/helpshift/f/b;

    iget-object v1, p0, Lcom/helpshift/ScreenshotPreviewActivity;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "screenshot_text_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helpshift/f/b;->a(I)V

    .line 37
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/helpshift/app/ActionBarActivity;->onResume()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/ScreenshotPreviewActivity;->a:Z

    .line 71
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/helpshift/app/ActionBarActivity;->onStart()V

    .line 76
    iget-boolean v0, p0, Lcom/helpshift/ScreenshotPreviewActivity;->a:Z

    if-nez v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/helpshift/ah;->a(Landroid/app/Activity;)V

    .line 79
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/ScreenshotPreviewActivity;->a:Z

    .line 80
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/helpshift/app/ActionBarActivity;->onStop()V

    .line 85
    iget-boolean v0, p0, Lcom/helpshift/ScreenshotPreviewActivity;->a:Z

    if-nez v0, :cond_0

    .line 86
    invoke-static {p0}, Lcom/helpshift/ah;->b(Landroid/app/Activity;)V

    .line 88
    :cond_0
    return-void
.end method
