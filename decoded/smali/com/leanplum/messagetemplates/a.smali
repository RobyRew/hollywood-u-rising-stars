.class abstract Lcom/leanplum/messagetemplates/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/leanplum/ActionContext;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I


# direct methods
.method protected constructor <init>(Lcom/leanplum/ActionContext;)V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/leanplum/messagetemplates/a;->a:Lcom/leanplum/ActionContext;

    .line 36
    const-string/jumbo v0, "Title.Text"

    invoke-virtual {p1, v0}, Lcom/leanplum/ActionContext;->stringNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leanplum/messagetemplates/a;->b(Ljava/lang/String;)V

    .line 37
    const-string/jumbo v0, "Title.Color"

    invoke-virtual {p1, v0}, Lcom/leanplum/ActionContext;->numberNamed(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/leanplum/messagetemplates/a;->b(I)V

    .line 38
    const-string/jumbo v0, "Message.Text"

    invoke-virtual {p1, v0}, Lcom/leanplum/ActionContext;->stringNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leanplum/messagetemplates/a;->c(Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "Message.Color"

    invoke-virtual {p1, v0}, Lcom/leanplum/ActionContext;->numberNamed(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/leanplum/messagetemplates/a;->c(I)V

    .line 40
    const-string/jumbo v0, "Background image"

    invoke-virtual {p1, v0}, Lcom/leanplum/ActionContext;->streamNamed(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 43
    :try_start_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leanplum/messagetemplates/a;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    const-string/jumbo v0, "Background color"

    invoke-virtual {p1, v0}, Lcom/leanplum/ActionContext;->numberNamed(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/leanplum/messagetemplates/a;->a(I)V

    .line 49
    const-string/jumbo v0, "Accept button.Text"

    invoke-virtual {p1, v0}, Lcom/leanplum/ActionContext;->stringNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leanplum/messagetemplates/a;->a(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, "Accept button.Background color"

    invoke-virtual {p1, v0}, Lcom/leanplum/ActionContext;->numberNamed(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/leanplum/messagetemplates/a;->d(I)V

    .line 52
    const-string/jumbo v0, "Accept button.Text color"

    invoke-virtual {p1, v0}, Lcom/leanplum/ActionContext;->numberNamed(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/leanplum/messagetemplates/a;->e(I)V

    .line 54
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string/jumbo v1, "Leanplum"

    const-string/jumbo v2, "Error loading background image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/leanplum/messagetemplates/a;->g:I

    .line 62
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/leanplum/messagetemplates/a;->f:Landroid/graphics/Bitmap;

    .line 114
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/leanplum/messagetemplates/a;->h:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private b(I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/leanplum/messagetemplates/a;->c:I

    .line 86
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/leanplum/messagetemplates/a;->b:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private c(I)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/leanplum/messagetemplates/a;->e:I

    .line 102
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/leanplum/messagetemplates/a;->d:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private d(I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lcom/leanplum/messagetemplates/a;->i:I

    .line 122
    return-void
.end method

.method private e(I)V
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Lcom/leanplum/messagetemplates/a;->j:I

    .line 130
    return-void
.end method

.method public static toArgs(Landroid/content/Context;)Lcom/leanplum/ActionArgs;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xff

    const/4 v4, -0x1

    const/high16 v3, -0x1000000

    .line 137
    new-instance v0, Lcom/leanplum/ActionArgs;

    invoke-direct {v0}, Lcom/leanplum/ActionArgs;-><init>()V

    const-string/jumbo v1, "Title.Text"

    invoke-static {p0}, Lcom/leanplum/messagetemplates/MessageTemplates;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v0

    const-string/jumbo v1, "Title.Color"

    invoke-virtual {v0, v1, v3}, Lcom/leanplum/ActionArgs;->withColor(Ljava/lang/String;I)Lcom/leanplum/ActionArgs;

    move-result-object v0

    const-string/jumbo v1, "Message.Text"

    const-string/jumbo v2, "Popup message goes here."

    invoke-virtual {v0, v1, v2}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v0

    const-string/jumbo v1, "Message.Color"

    invoke-virtual {v0, v1, v3}, Lcom/leanplum/ActionArgs;->withColor(Ljava/lang/String;I)Lcom/leanplum/ActionArgs;

    move-result-object v0

    const-string/jumbo v1, "Background image"

    invoke-virtual {v0, v1, v6}, Lcom/leanplum/ActionArgs;->withFile(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/ActionArgs;

    move-result-object v0

    const-string/jumbo v1, "Background color"

    invoke-virtual {v0, v1, v4}, Lcom/leanplum/ActionArgs;->withColor(Ljava/lang/String;I)Lcom/leanplum/ActionArgs;

    move-result-object v0

    const-string/jumbo v1, "Accept button.Text"

    const-string/jumbo v2, "OK"

    invoke-virtual {v0, v1, v2}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v0

    const-string/jumbo v1, "Accept button.Background color"

    invoke-virtual {v0, v1, v4}, Lcom/leanplum/ActionArgs;->withColor(Ljava/lang/String;I)Lcom/leanplum/ActionArgs;

    move-result-object v0

    const-string/jumbo v1, "Accept button.Text color"

    const/4 v2, 0x0

    const/16 v3, 0x7a

    invoke-static {v5, v2, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/leanplum/ActionArgs;->withColor(Ljava/lang/String;I)Lcom/leanplum/ActionArgs;

    move-result-object v0

    const-string/jumbo v1, "Accept action"

    invoke-virtual {v0, v1, v6}, Lcom/leanplum/ActionArgs;->withAction(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/ActionArgs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/leanplum/messagetemplates/a;->a:Lcom/leanplum/ActionContext;

    const-string/jumbo v1, "Accept action"

    invoke-virtual {v0, v1}, Lcom/leanplum/ActionContext;->runTrackedActionNamed(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public getAcceptButtonBackgroundColor()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/leanplum/messagetemplates/a;->i:I

    return v0
.end method

.method public getAcceptButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/leanplum/messagetemplates/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getAcceptButtonTextColor()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/leanplum/messagetemplates/a;->j:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/leanplum/messagetemplates/a;->g:I

    return v0
.end method

.method public getBackgroundImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/leanplum/messagetemplates/a;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBackgroundImageRounded(I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/leanplum/messagetemplates/a;->f:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcom/leanplum/utils/BitmapUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getMessageColor()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/leanplum/messagetemplates/a;->e:I

    return v0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/leanplum/messagetemplates/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/leanplum/messagetemplates/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/leanplum/messagetemplates/a;->c:I

    return v0
.end method
