.class public Lcom/leanplum/messagetemplates/CenterPopupOptions;
.super Lcom/leanplum/messagetemplates/a;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Lcom/leanplum/ActionContext;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/leanplum/messagetemplates/a;-><init>(Lcom/leanplum/ActionContext;)V

    .line 21
    const-string/jumbo v0, "Layout.Width"

    invoke-virtual {p1, v0}, Lcom/leanplum/ActionContext;->numberNamed(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1030
    iput v0, p0, Lcom/leanplum/messagetemplates/CenterPopupOptions;->a:I

    .line 22
    const-string/jumbo v0, "Layout.Height"

    invoke-virtual {p1, v0}, Lcom/leanplum/ActionContext;->numberNamed(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1038
    iput v0, p0, Lcom/leanplum/messagetemplates/CenterPopupOptions;->b:I

    .line 23
    return-void
.end method

.method public static toArgs(Landroid/content/Context;)Lcom/leanplum/ActionArgs;
    .locals 3

    .prologue
    .line 42
    invoke-static {p0}, Lcom/leanplum/messagetemplates/a;->toArgs(Landroid/content/Context;)Lcom/leanplum/ActionArgs;

    move-result-object v0

    const-string/jumbo v1, "Layout.Width"

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v0

    const-string/jumbo v1, "Layout.Height"

    const/16 v2, 0xfa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic accept()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->accept()V

    return-void
.end method

.method public bridge synthetic getAcceptButtonBackgroundColor()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getAcceptButtonBackgroundColor()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAcceptButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getAcceptButtonText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAcceptButtonTextColor()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getAcceptButtonTextColor()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBackgroundColor()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBackgroundImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getBackgroundImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBackgroundImageRounded(I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/leanplum/messagetemplates/a;->getBackgroundImageRounded(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/leanplum/messagetemplates/CenterPopupOptions;->b:I

    return v0
.end method

.method public bridge synthetic getMessageColor()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getMessageColor()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMessageText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getMessageText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitleColor()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/leanplum/messagetemplates/a;->getTitleColor()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/leanplum/messagetemplates/CenterPopupOptions;->a:I

    return v0
.end method
