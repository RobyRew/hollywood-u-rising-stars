.class Lcom/jirbo/adcolony/bl;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/bi;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/bi;)V
    .locals 0

    .prologue
    .line 967
    iput-object p1, p0, Lcom/jirbo/adcolony/bl;->a:Lcom/jirbo/adcolony/bi;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3

    .prologue
    .line 969
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v0

    .line 970
    if-nez v0, :cond_1

    .line 972
    const-string/jumbo v0, "Internal"

    .line 979
    :cond_0
    :goto_0
    sget-object v1, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v1

    const-string/jumbo v2, " ["

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    const-string/jumbo v1, " line "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->a(I)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 980
    const/4 v0, 0x1

    return v0

    .line 976
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 977
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .prologue
    .line 985
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 986
    return-void
.end method
