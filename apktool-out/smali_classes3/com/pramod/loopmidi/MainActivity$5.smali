.class Lcom/pramod/loopmidi/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/loopmidi/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/loopmidi/MainActivity;


# direct methods
.method constructor <init>(Lcom/pramod/loopmidi/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pramod/loopmidi/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 437
    iput-object p1, p0, Lcom/pramod/loopmidi/MainActivity$5;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 440
    iget-object v0, p0, Lcom/pramod/loopmidi/MainActivity$5;->this$0:Lcom/pramod/loopmidi/MainActivity;

    iget-object v1, p0, Lcom/pramod/loopmidi/MainActivity$5;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fgeteditMode(Lcom/pramod/loopmidi/MainActivity;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fputeditMode(Lcom/pramod/loopmidi/MainActivity;Z)V

    .line 441
    iget-object v0, p0, Lcom/pramod/loopmidi/MainActivity$5;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fgeteditMode(Lcom/pramod/loopmidi/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/pramod/loopmidi/MainActivity$5;->this$0:Lcom/pramod/loopmidi/MainActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fputcopySourcePad(Lcom/pramod/loopmidi/MainActivity;I)V

    .line 443
    iget-object v0, p0, Lcom/pramod/loopmidi/MainActivity$5;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-static {v0, v1}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fputswapSourcePad(Lcom/pramod/loopmidi/MainActivity;I)V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/pramod/loopmidi/MainActivity$5;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-virtual {v0}, Lcom/pramod/loopmidi/MainActivity;->updateEditButtonUI()V

    .line 446
    iget-object v0, p0, Lcom/pramod/loopmidi/MainActivity$5;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fgetprefs(Lcom/pramod/loopmidi/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/pramod/loopmidi/MainActivity$5;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fgeteditMode(Lcom/pramod/loopmidi/MainActivity;)Z

    move-result v1

    const-string v2, "edit_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 447
    iget-object v0, p0, Lcom/pramod/loopmidi/MainActivity$5;->this$0:Lcom/pramod/loopmidi/MainActivity;

    .line 448
    .local v0, "mainActivity":Lcom/pramod/loopmidi/MainActivity;
    invoke-static {v0}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/loopmidi/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pramod/loopmidi/MainActivity;->saveKitToMemory(I)V

    .line 449
    return-void
.end method
