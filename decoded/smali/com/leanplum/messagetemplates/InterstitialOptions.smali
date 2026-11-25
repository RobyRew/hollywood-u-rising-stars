.class public Lcom/leanplum/messagetemplates/InterstitialOptions;
.super Lcom/leanplum/messagetemplates/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/leanplum/ActionContext;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/leanplum/messagetemplates/a;-><init>(Lcom/leanplum/ActionContext;)V

    .line 18
    return-void
.end method

.method public static toArgs(Landroid/content/Context;)Lcom/leanplum/ActionArgs;
    .locals 3

    .prologue
    .line 21
    invoke-static {p0}, Lcom/leanplum/messagetemplates/a;->toArgs(Landroid/content/Context;)Lcom/leanplum/ActionArgs;

    move-result-object v0

    const-string/jumbo v1, "Message.Text"

    const-string/jumbo v2, "Interstitial message goes here."

    invoke-virtual {v0, v1, v2}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic accept()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->accept()V

    return-void
.end method

.method public bridge synthetic getAcceptButtonBackgroundColor()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getAcceptButtonBackgroundColor()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAcceptButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getAcceptButtonText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAcceptButtonTextColor()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getAcceptButtonTextColor()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBackgroundColor()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBackgroundImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getBackgroundImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBackgroundImageRounded(I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/leanplum/messagetemplates/a;->getBackgroundImageRounded(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageColor()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getMessageColor()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMessageText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getMessageText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitleColor()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getTitleColor()I

    move-result v0

    return v0
.end method
