import cmdline-lib as CL
args = CL.command-line-arguments()
if args.length() >= 3:
    print("Ahoy, " + args.get(2) + "!\n")
else:
    print("Ahoy, world!\n")
end
